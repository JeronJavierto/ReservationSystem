using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Itproject
{
    #region Services
    public class Services
    {
        #region Member Variables
        protected int _SerID;
        protected string _typeOfService;
        #endregion
        #region Constructors
        public Services() { }
        public Services(string typeOfService)
        {
            this._typeOfService=typeOfService;
        }
        #endregion
        #region Public Properties
        public virtual int SerID
        {
            get {return _SerID;}
            set {_SerID=value;}
        }
        public virtual string TypeOfService
        {
            get {return _typeOfService;}
            set {_typeOfService=value;}
        }
        #endregion
    }
    #endregion
}