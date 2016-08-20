json.extract! site, :id, :title, :tags, :logo_url, :theme_id, :menu_id, :temp_id, :created_at, :updated_at
json.url site_url(site, format: :json)