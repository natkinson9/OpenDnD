json.extract! char_sheet, :id, :player_name, :char_name, :race, :created_at, :updated_at
json.url char_sheet_url(char_sheet, format: :json)
