class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '内科' },
    { id: 3, name: '歯科' },
    { id: 4, name: '耳鼻科' },
    { id: 5, name: '皮膚科' },
    { id: 6, name: '眼科' },
    { id: 7, name: '産婦人科' }
  ]

  include ActiveHash::Associations
  has_many :reservations

  end