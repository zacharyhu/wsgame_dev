<?php

/**
 * This is the model class for table "wsgame_cp_apply".
 *
 * The followings are the available columns in table 'wsgame_cp_apply':
 * @property integer $id
 * @property integer $cp_code
 * @property string $game_name
 * @property integer $game_id
 * @property string $URL
 * @property string $update_time
 * @property string $check_status
 * @property string $check_result
 * @property string check_oper
 */
class WsgameCpApply extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return WsgameCpApply the static model class
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
		return 'wsgame_cp_apply';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('game_name,URL', 'required'),
			array('game_id, ', 'numerical', 'integerOnly'=>true),
			array('game_name', 'length', 'max'=>50),
			array('check_status', 'length', 'max'=>3),
			array('URL', 'length', 'max'=>100),
			array('id, cp_code, game_name, game_id, URL, check_status,cp_code,check_result,check_oper','safe'),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id, cp_code, game_name, game_id, URL, check_status', 'safe', 'on'=>'search'),
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
			'cp_code' => '提交人',
			'game_name' => '游戏名称',
			'game_id' => '游戏ID',
			'URL' => 'Url',
			'update_time' => '最后更新时间',
			'check_status' => '测试状态0未测，1已测',
				'check_result'=>'测试结果',
				'check_oper'=>'测试人员',
				
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
		$criteria->compare('cp_code',$this->cp_code);
		$criteria->compare('game_name',$this->game_name,true);
		$criteria->compare('game_id',$this->game_id);
		$criteria->compare('URL',$this->URL,true);
		$criteria->compare('update_time',$this->update_time,true);
		$criteria->compare('check_status',$this->check_status);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
	public function showlist($cp_code)
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.
	
		$criteria=new CDbCriteria;
	
		$criteria->compare('id',$this->id);
		$criteria->compare('cp_code',$cp_code);
		$criteria->compare('game_name',$this->game_name,true);
		$criteria->compare('game_id',$this->game_id);
		$criteria->compare('URL',$this->URL,true);
		$criteria->compare('update_time',$this->update_time,true);
		$criteria->compare('check_status',$this->check_status);
	
		return new CActiveDataProvider($this, array(
				'criteria'=>$criteria,
		));
	}
	protected function beforeSave(){
		if (parent::beforeSave()){
			if ($this->isNewRecord){
				//提交验收
				$this->cp_code = Yii::app()->user->name;
				$this->check_status = '0';
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