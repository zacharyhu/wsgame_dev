<?php

/**
 * This is the model class for table "wsgame_test_links".
 *
 * The followings are the available columns in table 'wsgame_test_links':
 * @property integer $id
 * @property string $link_name
 * @property string $link_url
 * @property string $update_time
 * @property string $author
 * @property integer $status
 */
class WsgameTestLinks extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return WsgameTestLinks the static model class
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
		return 'wsgame_test_links';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('link_name, link_url, status', 'required'),
			array('status', 'numerical', 'integerOnly'=>true),
			array('link_name, author', 'length', 'max'=>50),
			array('link_url', 'length', 'max'=>255),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, link_name, link_url, update_time, author, status', 'safe', 'on'=>'search'),
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
			'link_name' => '链接名称',
			'link_url' => 'Link Url',
			'update_time' => 'Update Time',
			'author' => 'Author',
			'status' => 'Status，0失效1生效',
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
		$criteria->compare('link_name',$this->link_name,true);
		$criteria->compare('link_url',$this->link_url,true);
		$criteria->compare('update_time',$this->update_time,true);
		$criteria->compare('author',$this->author,true);
		$criteria->compare('status',$this->status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	
	protected function beforeSave(){
		if (parent::beforeSave()){
			if ($this->isNewRecord){
				//提交验收
				$this->author = Yii::app()->user->name;
				$this->status = '0';
				$this->update_time=date('Y-m-d H:i:s');
			}else {
				//修改验收
				$this->update_time=date('Y-m-d H:i:s');
			}
				
			return true;
		}else {
				
			return false;
		}
	}
}