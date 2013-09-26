<?php

/**
 * This is the model class for table "auth_user".
 *
 * The followings are the available columns in table 'auth_user':
 * @property integer $id
 * @property string $user_name
 * @property string $user_display
 * @property string $user_email
 * @property string $user_phone
 * @property string $password
 */
class AuthUser extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return AuthUser the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'auth_user';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id, user_name, user_display, user_email, user_phone, password', 'required'),
			array('id', 'numerical', 'integerOnly'=>true),
			array('user_name, user_display, user_email', 'length', 'max'=>50),
			array('user_phone', 'length', 'max'=>20),
			array('password', 'length', 'max'=>60),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, user_name, user_display, user_email, user_phone, password', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id' => 'ID',
			'user_name' => 'User Name',
			'user_display' => 'User Display',
			'user_email' => 'User Email',
			'user_phone' => 'User Phone',
			'password' => 'Password',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id',$this->id);
		$criteria->compare('user_name',$this->user_name,true);
		$criteria->compare('user_display',$this->user_display,true);
		$criteria->compare('user_email',$this->user_email,true);
		$criteria->compare('user_phone',$this->user_phone,true);
		$criteria->compare('password',$this->password,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}