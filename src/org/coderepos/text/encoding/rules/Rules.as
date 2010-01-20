package org.coderepos.text.encoding.rules
{
    public class Rules implements IRule
    {
        private var _rules:Array; // Vector.<IRule>

        //public function Rules(rule:IRule=null)
        public function Rules(...args:Array)
        {
            _rules = [];
            var len:int = args.length;
            for (var i:int = 0; i < len; i++)
                _rules.push(args[i]);
        }

        public function add(rule:IRule):void
        {
            _rules.push(rule);
        }

        public function validate(unicode:uint):Boolean
        {
            var len:int = _rules.length;
            for (var i:int = 0; i < len; i++) {
                if (_rules[i].validate(unicode))
                    return true;
            }
            return false;
        }
    }
}

