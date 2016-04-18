class EnableUuidExtension < ActiveRecord::Migration[5.0]
  def change
    # 确保用户具有CREATE EXTENSION的权限
    enable_extension 'uuid-ossp'
  end
end
