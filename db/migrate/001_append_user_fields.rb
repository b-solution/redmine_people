# This file is a part of Redmine CRM (redmine_contacts) plugin,
# customer relationship management plugin for Redmine
#
# Copyright (C) 2011-2015 Kirill Bezrukov
# http://www.redminecrm.com/
#
# redmine_people is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# redmine_people is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with redmine_people.  If not, see <http://www.gnu.org/licenses/>.

class AppendUserFields < ActiveRecord::Migration
  def self.up
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :skype, :string
    add_column :users, :birthday, :date
    add_column :users, :job_title, :string
    add_column :users, :company, :string
    add_column :users, :middlename, :string
    add_column :users, :gender, :smallint
    add_column :users, :twitter, :string
    add_column :users, :facebook, :string
    add_column :users, :linkedin, :string
    add_column :users, :background, :text
    add_column :users, :appearance_date, :date
    add_column :users, :department_id, :integer
  end

  def self.down
    remove_column :users, :phone
    remove_column :users, :address
    remove_column :users, :skype
    remove_column :users, :birthday
    remove_column :users, :job_title
    remove_column :users, :company
    remove_column :users, :middlename
    remove_column :users, :gender
    remove_column :users, :twitter
    remove_column :users, :facebook
    remove_column :users, :linkedin
    remove_column :users, :background
    remove_column :users, :appearance_date
    remove_column :users, :department_id
  end

end
