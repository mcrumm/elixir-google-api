# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.Model do
  @moduledoc """


  ## Attributes

  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this model was created, in millisecs since the
      epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Optional] A user-friendly description of this model.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `expirationTime` (*type:* `String.t`, *default:* `nil`) - [Optional] The time when this model expires, in milliseconds since the
      epoch. If not present, the model will persist indefinitely. Expired models
      will be deleted and their storage reclaimed.  The defaultTableExpirationMs
      property of the encapsulating dataset can be used to set a default
      expirationTime on newly created models.
  *   `featureColumns` (*type:* `list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t)`, *default:* `nil`) - Output only. Input feature columns that were used to train this model.
  *   `friendlyName` (*type:* `String.t`, *default:* `nil`) - [Optional] A descriptive name for this model.
  *   `labelColumns` (*type:* `list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t)`, *default:* `nil`) - Output only. Label columns that were used to train this model.
      The output of the model will have a "predicted_" prefix to these columns.
  *   `labels` (*type:* `map()`, *default:* `nil`) - [Optional] The labels associated with this model. You can use these to
      organize and group your models. Label keys and values can be no longer
      than 63 characters, can only contain lowercase letters, numeric
      characters, underscores and dashes. International characters are allowed.
      Label values are optional. Label keys must start with a letter and each
      label in the list must have a different key.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this model was last modified, in millisecs
      since the epoch.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Output only. The geographic location where the model resides. This value
      is inherited from the dataset.
  *   `modelReference` (*type:* `GoogleApi.BigQuery.V2.Model.ModelReference.t`, *default:* `nil`) - Required. Unique identifier for this model.
  *   `modelType` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the model resource.
  *   `trainingRuns` (*type:* `list(GoogleApi.BigQuery.V2.Model.TrainingRun.t)`, *default:* `nil`) - Output only. Information for all training runs in increasing order of
      start_time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => String.t(),
          :description => String.t(),
          :etag => String.t(),
          :expirationTime => String.t(),
          :featureColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()),
          :friendlyName => String.t(),
          :labelColumns => list(GoogleApi.BigQuery.V2.Model.StandardSqlField.t()),
          :labels => map(),
          :lastModifiedTime => String.t(),
          :location => String.t(),
          :modelReference => GoogleApi.BigQuery.V2.Model.ModelReference.t(),
          :modelType => String.t(),
          :trainingRuns => list(GoogleApi.BigQuery.V2.Model.TrainingRun.t())
        }

  field(:creationTime)
  field(:description)
  field(:etag)
  field(:expirationTime)
  field(:featureColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:friendlyName)
  field(:labelColumns, as: GoogleApi.BigQuery.V2.Model.StandardSqlField, type: :list)
  field(:labels, type: :map)
  field(:lastModifiedTime)
  field(:location)
  field(:modelReference, as: GoogleApi.BigQuery.V2.Model.ModelReference)
  field(:modelType)
  field(:trainingRuns, as: GoogleApi.BigQuery.V2.Model.TrainingRun, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Model.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Model do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
