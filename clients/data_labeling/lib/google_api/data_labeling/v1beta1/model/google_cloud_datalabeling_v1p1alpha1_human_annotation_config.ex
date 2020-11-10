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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig do
  @moduledoc """
  Configuration for how human labeling task should be done.

  ## Attributes

  *   `annotatedDatasetDescription` (*type:* `String.t`, *default:* `nil`) - Optional. A human-readable description for AnnotatedDataset. The description can be up to 10000 characters long.
  *   `annotatedDatasetDisplayName` (*type:* `String.t`, *default:* `nil`) - Required. A human-readable name for AnnotatedDataset defined by users. Maximum of 64 characters .
  *   `contributorEmails` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If you want your own labeling contributors to manage and work on this labeling request, you can set these contributors here. We will give them access to the question types in crowdcompute. Note that these emails must be registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
  *   `instruction` (*type:* `String.t`, *default:* `nil`) - Required. Instruction resource name.
  *   `labelGroup` (*type:* `String.t`, *default:* `nil`) - Optional. A human-readable label used to logically group labeling tasks. This string must match the regular expression `[a-zA-Z\\\\d_-]{0,128}`.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when task is language related. For example, French text classification.
  *   `questionDuration` (*type:* `String.t`, *default:* `nil`) - Optional. Maximum duration for contributors to answer a question. Maximum is 3600 seconds. Default is 3600 seconds.
  *   `replicaCount` (*type:* `integer()`, *default:* `nil`) - Optional. Replication of questions. Each question will be sent to up to this number of contributors to label. Aggregated answers will be returned. Default is set to 1. For image related labeling, valid values are 1, 3, 5.
  *   `userEmailAddress` (*type:* `String.t`, *default:* `nil`) - Email of the user who started the labeling task and should be notified by email. If empty no notification will be sent.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatedDatasetDescription => String.t(),
          :annotatedDatasetDisplayName => String.t(),
          :contributorEmails => list(String.t()),
          :instruction => String.t(),
          :labelGroup => String.t(),
          :languageCode => String.t(),
          :questionDuration => String.t(),
          :replicaCount => integer(),
          :userEmailAddress => String.t()
        }

  field(:annotatedDatasetDescription)
  field(:annotatedDatasetDisplayName)
  field(:contributorEmails, type: :list)
  field(:instruction)
  field(:labelGroup)
  field(:languageCode)
  field(:questionDuration)
  field(:replicaCount)
  field(:userEmailAddress)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
