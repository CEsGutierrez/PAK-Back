class MakeImagesPolymorphic < ActiveRecord::Migration[6.0]
  def change
    # remove_reference(:images, :ingredient, index: true)
    # remove_reference(:images, :procedural_step, index: true)
    # add_reference(:images, :imageable, polymorphoc: true, index: true)
  end
end
