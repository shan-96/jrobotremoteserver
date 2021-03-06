package org.robotframework.remoteserver.testlibraries;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

public class DynamicOneRunKeywordKwargsList extends StaticOne {

    public String[] getKeywordNames() {
        return new String[] {"getArgs"};
    }

    public Object runKeyword(String name, List<String> args, Map kwargs) {
        if (name.equals("getArgs")) {
            return getArgs(args, kwargs);
        } else {
            throw new RuntimeException();
        }
    }

    public List<String> getKeywordArguments(String name) {
        return Arrays.asList("*args", "**kwargs");
    }

}
