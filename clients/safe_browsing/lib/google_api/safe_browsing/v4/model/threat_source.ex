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

defmodule GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  @moduledoc """
  A single resource related to a threat hit.

  ## Attributes

  *   `referrer` (*type:* `String.t`, *default:* `nil`) - Referrer of the resource. Only set if the referrer is available.
  *   `remoteIp` (*type:* `String.t`, *default:* `nil`) - The remote IP of the resource in ASCII format. Either IPv4 or IPv6.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of source reported.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :referrer => String.t(),
          :remoteIp => String.t(),
          :type => String.t(),
          :url => String.t()
        }

  field(:referrer)
  field(:remoteIp)
  field(:type)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  def decode(value, options) do
    GoogleApi.SafeBrowsing.V4.Model.ThreatSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SafeBrowsing.V4.Model.ThreatSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
