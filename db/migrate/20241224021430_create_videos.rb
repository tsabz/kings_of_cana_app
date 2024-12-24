class CreateVideos < ActiveRecord::Migration[8.0]
  def change
    create_table :videos do |t|
      t.references :user, null: false, foreign_key: true  # Associate with a user
      t.string :title                                    # Title of the video
      t.text :description                                # Description of the video
      t.string :file_url                                 # URL of the file on S3
      t.string :content_type                             # File type (e.g., video/mp4)
      t.integer :file_size                               # Size of the file in bytes
      t.timestamps
    end
  end
end
