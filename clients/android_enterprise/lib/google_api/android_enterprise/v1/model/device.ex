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

defmodule GoogleApi.AndroidEnterprise.V1.Model.Device do
  @moduledoc """
  A Devices resource represents a mobile device managed by the EMM and belonging to a specific enterprise user.

  ## Attributes

  *   `androidId` (*type:* `String.t`, *default:* `nil`) - The Google Play Services Android ID for the device encoded as a lowercase hex string. For example, "123456789abcdef0".
  *   `kind` (*type:* `String.t`, *default:* `androidenterprise#device`) - 
  *   `managementType` (*type:* `String.t`, *default:* `nil`) - Identifies the extent to which the device is controlled by a managed Google Play EMM in various deployment configurations.

      Possible values include: 
      - "managedDevice", a device that has the EMM's device policy controller (DPC) as the device owner. 
      - "managedProfile", a device that has a profile managed by the DPC (DPC is profile owner) in addition to a separate, personal profile that is unavailable to the DPC. 
      - "containerApp", no longer used (deprecated). 
      - "unmanagedProfile", a device that has been allowed (by the domain's admin, using the Admin Console to enable the privilege) to use managed Google Play, but the profile is itself not owned by a DPC.
  *   `policy` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.Policy.t`, *default:* `nil`) - The policy enforced on the device.
  *   `report` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.DeviceReport.t`, *default:* `nil`) - The device report updated with the latest app states.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidId => String.t(),
          :kind => String.t(),
          :managementType => String.t(),
          :policy => GoogleApi.AndroidEnterprise.V1.Model.Policy.t(),
          :report => GoogleApi.AndroidEnterprise.V1.Model.DeviceReport.t()
        }

  field(:androidId)
  field(:kind)
  field(:managementType)
  field(:policy, as: GoogleApi.AndroidEnterprise.V1.Model.Policy)
  field(:report, as: GoogleApi.AndroidEnterprise.V1.Model.DeviceReport)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.Device do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.Device.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.Device do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
