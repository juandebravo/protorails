
# Add Protojson indexed format
ActionController::Renderers.add :indexed do |obj, options|
  json = Protojson.encode(obj, :indexed).to_s
  self.content_type ||= Mime::JSON
  json
end

# Add Protojson tagmap format
ActionController::Renderers.add :tagmap do |obj, options|
  json = Protojson.encode(obj, :tag_map)
  self.content_type ||= Mime::JSON
  json
end
