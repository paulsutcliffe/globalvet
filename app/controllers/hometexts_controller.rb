class HometextsController < InheritedResources::Base

  def update
    update! {root_path}
  end
end
