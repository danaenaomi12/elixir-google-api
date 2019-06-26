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

defmodule GoogleApi.Books.V1.Model.VolumeSaleInfo do
  @moduledoc """
  Any information about a volume related to the eBookstore and/or purchaseability. This information can depend on the country where the request originates from (i.e. books may not be for sale in certain countries).

  ## Attributes

  *   `buyLink` (*type:* `String.t`, *default:* `nil`) - URL to purchase this volume on the Google Books site. (In LITE projection)
  *   `country` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO_3166-1 country code for which this sale information is valid. (In LITE projection.)
  *   `isEbook` (*type:* `boolean()`, *default:* `nil`) - Whether or not this volume is an eBook (can be added to the My eBooks shelf).
  *   `listPrice` (*type:* `GoogleApi.Books.V1.Model.VolumeSaleInfoListPrice.t`, *default:* `nil`) - Suggested retail price. (In LITE projection.)
  *   `offers` (*type:* `list(GoogleApi.Books.V1.Model.VolumeSaleInfoOffers.t)`, *default:* `nil`) - Offers available for this volume (sales and rentals).
  *   `onSaleDate` (*type:* `DateTime.t`, *default:* `nil`) - The date on which this book is available for sale.
  *   `retailPrice` (*type:* `GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice.t`, *default:* `nil`) - The actual selling price of the book. This is the same as the suggested retail or list price unless there are offers or discounts on this volume. (In LITE projection.)
  *   `saleability` (*type:* `String.t`, *default:* `nil`) - Whether or not this book is available for sale or offered for free in the Google eBookstore for the country listed above. Possible values are FOR_SALE, FOR_RENTAL_ONLY, FOR_SALE_AND_RENTAL, FREE, NOT_FOR_SALE, or FOR_PREORDER.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buyLink => String.t(),
          :country => String.t(),
          :isEbook => boolean(),
          :listPrice => GoogleApi.Books.V1.Model.VolumeSaleInfoListPrice.t(),
          :offers => list(GoogleApi.Books.V1.Model.VolumeSaleInfoOffers.t()),
          :onSaleDate => DateTime.t(),
          :retailPrice => GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice.t(),
          :saleability => String.t()
        }

  field(:buyLink)
  field(:country)
  field(:isEbook)
  field(:listPrice, as: GoogleApi.Books.V1.Model.VolumeSaleInfoListPrice)
  field(:offers, as: GoogleApi.Books.V1.Model.VolumeSaleInfoOffers, type: :list)
  field(:onSaleDate, as: DateTime)
  field(:retailPrice, as: GoogleApi.Books.V1.Model.VolumeSaleInfoRetailPrice)
  field(:saleability)
end

defimpl Poison.Decoder, for: GoogleApi.Books.V1.Model.VolumeSaleInfo do
  def decode(value, options) do
    GoogleApi.Books.V1.Model.VolumeSaleInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Books.V1.Model.VolumeSaleInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
