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

defmodule GoogleApi.Content.V21.Model.OrderCustomer do
  @moduledoc """


  ## Attributes

  *   `fullName` (*type:* `String.t`, *default:* `nil`) - Full name of the customer.
  *   `invoiceReceivingEmail` (*type:* `String.t`, *default:* `nil`) - Email address for the merchant to send value-added tax or invoice documentation of the order. Only the last document sent is made available to the customer. For more information, see  About automated VAT invoicing for Shopping Actions.
  *   `loyaltyInfo` (*type:* `GoogleApi.Content.V21.Model.OrderCustomerLoyaltyInfo.t`, *default:* `nil`) - Loyalty program information.
  *   `marketingRightsInfo` (*type:* `GoogleApi.Content.V21.Model.OrderCustomerMarketingRightsInfo.t`, *default:* `nil`) - Customer's marketing preferences. Contains the marketing opt-in information that is current at the time that the merchant call. User preference selections can change from one order to the next so preferences must be checked with every order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullName => String.t(),
          :invoiceReceivingEmail => String.t(),
          :loyaltyInfo => GoogleApi.Content.V21.Model.OrderCustomerLoyaltyInfo.t(),
          :marketingRightsInfo => GoogleApi.Content.V21.Model.OrderCustomerMarketingRightsInfo.t()
        }

  field(:fullName)
  field(:invoiceReceivingEmail)
  field(:loyaltyInfo, as: GoogleApi.Content.V21.Model.OrderCustomerLoyaltyInfo)
  field(:marketingRightsInfo, as: GoogleApi.Content.V21.Model.OrderCustomerMarketingRightsInfo)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.OrderCustomer do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.OrderCustomer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.OrderCustomer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
