# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Sheets.V4.Model.SheetProperties do
  @moduledoc """
  Properties of a sheet.

  ## Attributes

  *   `dataSourceSheetProperties` (*type:* `GoogleApi.Sheets.V4.Model.DataSourceSheetProperties.t`, *default:* `nil`) - Output only. If present, the field contains SheetType.DATA_SOURCE sheet specific properties.
  *   `gridProperties` (*type:* `GoogleApi.Sheets.V4.Model.GridProperties.t`, *default:* `nil`) - Additional properties of the sheet if this sheet is a grid. (If the sheet is an object sheet, containing a chart or image, then this field will be absent.) When writing it is an error to set any grid properties on non-grid sheets.
  *   `hidden` (*type:* `boolean()`, *default:* `nil`) - True if the sheet is hidden in the UI, false if it's visible.
  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the sheet within the spreadsheet. When adding or updating sheet properties, if this field is excluded then the sheet is added or moved to the end of the sheet list. When updating sheet indices or inserting sheets, movement is considered in "before the move" indexes. For example, if there were 3 sheets (S1, S2, S3) in order to move S1 ahead of S2 the index would have to be set to 2. A sheet index update request is ignored if the requested index is identical to the sheets current index or if the requested new index is equal to the current sheet index + 1.
  *   `rightToLeft` (*type:* `boolean()`, *default:* `nil`) - True if the sheet is an RTL sheet instead of an LTR sheet.
  *   `sheetId` (*type:* `integer()`, *default:* `nil`) - The ID of the sheet. Must be non-negative. This field cannot be changed once set.
  *   `sheetType` (*type:* `String.t`, *default:* `nil`) - The type of sheet. Defaults to GRID. This field cannot be changed once set.
  *   `tabColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The color of the tab in the UI.
  *   `tabColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The color of the tab in the UI. If tab_color is also set, this field takes precedence.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The name of the sheet.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceSheetProperties => GoogleApi.Sheets.V4.Model.DataSourceSheetProperties.t(),
          :gridProperties => GoogleApi.Sheets.V4.Model.GridProperties.t(),
          :hidden => boolean(),
          :index => integer(),
          :rightToLeft => boolean(),
          :sheetId => integer(),
          :sheetType => String.t(),
          :tabColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :tabColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :title => String.t()
        }

  field(:dataSourceSheetProperties, as: GoogleApi.Sheets.V4.Model.DataSourceSheetProperties)
  field(:gridProperties, as: GoogleApi.Sheets.V4.Model.GridProperties)
  field(:hidden)
  field(:index)
  field(:rightToLeft)
  field(:sheetId)
  field(:sheetType)
  field(:tabColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:tabColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SheetProperties do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SheetProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SheetProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
