# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

window.chkradio = (obj) ->
  objID = obj.getAttributeNode('id').nodeValue
  other_purpose = document.getElementById('other_purpose')
  if objID is 'other'
    other_purpose.disabled = false
  else
    other_purpose.disabled = true

  return

window.chkreceipt = (obj) ->
  objID = obj.getAttributeNode('id').nodeValue
  receipt_addresses = document.getElementsByClassName('receipt_address')
  receipt_provisos = document.getElementsByClassName('receipt_proviso')
  if objID is 'enabled'
    console.log(receipt_addresses)
    receipt_addresses[0].disabled = false
    receipt_provisos[0].disabled = false
  else
    console.log(receipt_addresses)
    receipt_addresses[0].disabled = true;
    receipt_provisos[0].disabled = true;

  return

window.chkpreffered_date = (obj) ->
  now = new Date()
  preffered_year = document.querySelector('#order_preffered_date_1i').options.selectedIndex + now.getFullYear()
  preffered_month = document.querySelector('#order_preffered_date_2i').options.selectedIndex
  preffered_day = document.querySelector('#order_preffered_date_3i').options.selectedIndex + 1
  preffered_date = new Date(preffered_year, preffered_month, preffered_day)
  most_recent_date = new Date( now.getFullYear(), now.getMonth(), now.getDate() )
  most_recent_date.setDate( most_recent_date.getDate() + 30 )

  if preffered_date >= most_recent_date
    document.querySelector('#preffered_date_label').style.visibility = 'hidden'
  else
    document.querySelector('#preffered_date_label').style.visibility = 'visible'

  return

window.chksize = (obj) ->
  size = document.querySelector('#order_size').options.selectedIndex
  if size isnt 5
    document.getElementById('height').disabled = true
    document.getElementById('width').disabled = true
  else
    document.getElementById('height').disabled = false
    document.getElementById('width').disabled = false

  return


$(document).on 'ready page:load', ->
  phone_number = document.getElementById('phone_number')
  return unless phone_number
  phone_number.addEventListener 'invalid', (e) ->
    e.target.setCustomValidity('半角数字とハイフン(-)だけで入力してください') if phone_number.validity.patternMismatch
    phone_number.addEventListener 'input', (e) ->
      e.target.setCustomValidity('')
    return
  , false

  residence_zip_code = document.getElementById('residence_zip_code')
  return unless residence_zip_code
  residence_zip_code.addEventListener 'invalid', (e) ->
    e.target.setCustomValidity('半角数字とハイフン(-)だけで入力してください') if residence_zip_code.validity.patternMismatch
    residence_zip_code.addEventListener 'input', (e) ->
      e.target.setCustomValidity('')
    return
  , false

  mailing_zip_code = document.getElementById('mailing_zip_code')
  return unless mailing_zip_code
  mailing_zip_code.addEventListener 'invalid', (e) ->
    e.target.setCustomValidity('半角数字とハイフン(-)だけで入力してください') if mailing_zip_code.validity.patternMismatch
    mailing_zip_code.addEventListener 'input', (e) ->
      e.target.setCustomValidity('')
    return
  , false

  height = document.getElementById('height')
  return unless height
  height.addEventListener 'invalid', (e) ->
    e.target.setCustomValidity('半角数字を入力してください') if height.validity.patternMismatch
    height.addEventListener 'input', (e) ->
      e.target.setCustomValidity('')
    return
  , false

  width = document.getElementById('width')
  return unless width
  width.addEventListener 'invalid', (e) ->
    e.target.setCustomValidity('半角数字を入力してください') if width.validity.patternMismatch
    width.addEventListener 'input', (e) ->
      e.target.setCustomValidity('')
    return
  , false
