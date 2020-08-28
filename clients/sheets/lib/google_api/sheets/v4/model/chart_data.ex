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

defmodule GoogleApi.Sheets.V4.Model.ChartData do
  @moduledoc """
  The data included in a domain or series.

  ## Attributes

  *   `aggregateType` (*type:* `String.t`, *default:* `nil`) - The aggregation type for the series of a data source chart. Not supported for regular charts.
  *   `columnReference` (*type:* `GoogleApi.Sheets.V4.Model.DataSourceColumnReference.t`, *default:* `nil`) - The reference to the data source column that the data reads from.
  *   `groupRule` (*type:* `GoogleApi.Sheets.V4.Model.ChartGroupRule.t`, *default:* `nil`) - The rule to group the data by if the ChartData backs the domain of a data source chart. Not supported for regular charts.
  *   `sourceRange` (*type:* `GoogleApi.Sheets.V4.Model.ChartSourceRange.t`, *default:* `nil`) - The source ranges of the data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateType => String.t(),
          :columnReference => GoogleApi.Sheets.V4.Model.DataSourceColumnReference.t(),
          :groupRule => GoogleApi.Sheets.V4.Model.ChartGroupRule.t(),
          :sourceRange => GoogleApi.Sheets.V4.Model.ChartSourceRange.t()
        }

  field(:aggregateType)
  field(:columnReference, as: GoogleApi.Sheets.V4.Model.DataSourceColumnReference)
  field(:groupRule, as: GoogleApi.Sheets.V4.Model.ChartGroupRule)
  field(:sourceRange, as: GoogleApi.Sheets.V4.Model.ChartSourceRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartData do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ChartData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
