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

defmodule GoogleApi.GameServices.V1beta.Model.GameServerCluster do
  @moduledoc """
  A game server cluster resource.

  ## Attributes

  *   `connectionInfo` (*type:* `GoogleApi.GameServices.V1beta.Model.GameServerClusterConnectionInfo.t`, *default:* `nil`) - The game server cluster connection information. This information is used to
      manage game server clusters.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation time.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Human readable description of the cluster.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this game server cluster. Each label is a
      key-value pair.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the game server cluster. Uses the form:

      `projects/{project}/locations/{location}/realms/{realm}/gameServerClusters/{cluster}`.
      For example,

      `projects/my-project/locations/{location}/realms/zanzibar/gameServerClusters/my-onprem-cluster`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionInfo =>
            GoogleApi.GameServices.V1beta.Model.GameServerClusterConnectionInfo.t(),
          :createTime => DateTime.t(),
          :description => String.t(),
          :etag => String.t(),
          :labels => map(),
          :name => String.t(),
          :updateTime => DateTime.t()
        }

  field(:connectionInfo, as: GoogleApi.GameServices.V1beta.Model.GameServerClusterConnectionInfo)
  field(:createTime, as: DateTime)
  field(:description)
  field(:etag)
  field(:labels, type: :map)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.GameServices.V1beta.Model.GameServerCluster do
  def decode(value, options) do
    GoogleApi.GameServices.V1beta.Model.GameServerCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GameServices.V1beta.Model.GameServerCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
