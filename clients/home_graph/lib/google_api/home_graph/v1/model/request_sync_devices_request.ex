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

defmodule GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesRequest do
  @moduledoc """
  Request type for the
  [`RequestSyncDevices`](#google.home.graph.v1.HomeGraphApiService.RequestSyncDevices)
  call.

  ## Attributes

  *   `agentUserId` (*type:* `String.t`, *default:* `nil`) - Required. Third-party user ID issued by agent's third-party identity
      provider.
  *   `async` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, the request will be added to a queue and a response will
      be returned immediately. The queue allows for de-duplication of
      simultaneous requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentUserId => String.t(),
          :async => boolean()
        }

  field(:agentUserId)
  field(:async)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesRequest do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.RequestSyncDevicesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end