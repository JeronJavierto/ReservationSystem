using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Itproject
{
    #region Event
    public class Event
    {
        #region Member Variables
        protected int _eventID;
        protected string _Event_name;
        protected string _Facility;
        protected unknown _Date;
        protected unknown _Time_start;
        protected unknown _Time_end;
        protected string _Description;
        #endregion
        #region Constructors
        public Event() { }
        public Event(string Event_name, string Facility, unknown Date, unknown Time_start, unknown Time_end, string Description)
        {
            this._Event_name=Event_name;
            this._Facility=Facility;
            this._Date=Date;
            this._Time_start=Time_start;
            this._Time_end=Time_end;
            this._Description=Description;
        }
        #endregion
        #region Public Properties
        public virtual int EventID
        {
            get {return _eventID;}
            set {_eventID=value;}
        }
        public virtual string Event_name
        {
            get {return _Event_name;}
            set {_Event_name=value;}
        }
        public virtual string Facility
        {
            get {return _Facility;}
            set {_Facility=value;}
        }
        public virtual unknown Date
        {
            get {return _Date;}
            set {_Date=value;}
        }
        public virtual unknown Time_start
        {
            get {return _Time_start;}
            set {_Time_start=value;}
        }
        public virtual unknown Time_end
        {
            get {return _Time_end;}
            set {_Time_end=value;}
        }
        public virtual string Description
        {
            get {return _Description;}
            set {_Description=value;}
        }
        #endregion
    }
    #endregion
}