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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextRequest do
  @moduledoc """
  Request message for LabelText.

  ## Attributes

  *   `basicConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.t`, *default:* `nil`) - Required. Basic human annotation config.
  *   `feature` (*type:* `String.t`, *default:* `nil`) - Required. The type of text labeling task.
  *   `textClassificationConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextClassificationConfig.t`, *default:* `nil`) - Configuration for text classification task. One of text_classification_config and text_entity_extraction_config is required.
  *   `textEntityExtractionConfig` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig.t`, *default:* `nil`) - Configuration for entity extraction task. One of text_classification_config and text_entity_extraction_config is required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig.t(),
          :feature => String.t(),
          :textClassificationConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextClassificationConfig.t(),
          :textEntityExtractionConfig =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig.t()
        }

  field(:basicConfig,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
  )

  field(:feature)

  field(:textClassificationConfig,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextClassificationConfig
  )

  field(:textEntityExtractionConfig,
    as:
      GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextRequest do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1LabelTextRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
