using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Itproject
{
    #region Equipment
    public class Equipment
    {
        #region Member Variables
        protected int _EquipID;
        protected string _equipName;
        #endregion
        #region Constructors
        public Equipment() { }
        public Equipment(string equipName)
        {
            this._equipName=equipName;
        }
        #endregion
        #region Public Properties
        public virtual int EquipID
        {
            get {return _EquipID;}
            set {_EquipID=value;}
        }
        public virtual string EquipName
        {
            get {return _equipName;}
            set {_equipName=value;}
        }
        #endregion
    }
    #endregion
}