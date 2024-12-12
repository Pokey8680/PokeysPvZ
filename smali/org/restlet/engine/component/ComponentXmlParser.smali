.class public Lorg/restlet/engine/component/ComponentXmlParser;
.super Ljava/lang/Object;
.source "ComponentXmlParser.java"


# instance fields
.field private volatile component:Lorg/restlet/Component;

.field private volatile xmlConfiguration:Lorg/restlet/representation/Representation;


# direct methods
.method public constructor <init>(Lorg/restlet/Component;Lorg/restlet/representation/Representation;)V
    .locals 0
    .param p1, "component"    # Lorg/restlet/Component;
    .param p2, "xmlConfiguration"    # Lorg/restlet/representation/Representation;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentXmlParser;->component:Lorg/restlet/Component;

    .line 132
    iput-object p2, p0, Lorg/restlet/engine/component/ComponentXmlParser;->xmlConfiguration:Lorg/restlet/representation/Representation;

    .line 133
    return-void
.end method

.method private attach(Lorg/restlet/routing/Router;Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/routing/TemplateRoute;
    .locals 9
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "targetClassName"    # Ljava/lang/String;
    .param p3, "uriPattern"    # Ljava/lang/String;
    .param p4, "defaultRoute"    # Z

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 155
    .local v2, "route":Lorg/restlet/routing/TemplateRoute;
    if-eqz p2, :cond_0

    .line 157
    :try_start_0
    invoke-static {p2}, Lorg/restlet/engine/Engine;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 161
    .local v4, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lorg/restlet/resource/ServerResource;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 162
    move-object v1, v4

    .line 164
    .local v1, "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 165
    invoke-virtual {p1, p3, v1}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Ljava/lang/Class;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v2

    .line 229
    .end local v1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v2

    .line 167
    .restart local v1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    .restart local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->attachDefault(Ljava/lang/Class;)Lorg/restlet/routing/TemplateRoute;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    goto :goto_0

    .line 170
    .end local v1    # "resourceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/restlet/resource/ServerResource;>;"
    :cond_2
    const/4 v3, 0x0

    .line 175
    .local v3, "target":Lorg/restlet/Restlet;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lorg/restlet/Context;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v8

    invoke-virtual {v8}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "target":Lorg/restlet/Restlet;
    check-cast v3, Lorg/restlet/Restlet;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 194
    .restart local v3    # "target":Lorg/restlet/Restlet;
    :goto_1
    if-eqz v3, :cond_0

    .line 195
    if-eqz p3, :cond_3

    if-nez p4, :cond_3

    .line 196
    :try_start_2
    invoke-virtual {p1, p3, v3}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v2

    goto :goto_0

    .line 179
    .end local v3    # "target":Lorg/restlet/Restlet;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t invoke the constructor of the target class. Please check this class has a constructor with a single parameter of type Context. The empty constructor and the context setter will be used instead: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/Restlet;

    .line 190
    .restart local v3    # "target":Lorg/restlet/Restlet;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/restlet/Restlet;->setContext(Lorg/restlet/Context;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 202
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "target":Lorg/restlet/Restlet;
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t find the target class. Please check that your classpath includes "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "target":Lorg/restlet/Restlet;
    .restart local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_3
    invoke-virtual {p1, v3}, Lorg/restlet/routing/Router;->attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v2

    goto/16 :goto_0

    .line 207
    .end local v3    # "target":Lorg/restlet/Restlet;
    .end local v4    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t instantiate the target class. Please check this class has an empty constructor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t instantiate the target class. Please check that you have to proper access rights to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t invoke the constructor of the target class. Please check this class has a constructor with a single parameter of Context "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 222
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t instantiate the target class. An exception was thrown while creating "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private attachWithDescriptor(Lorg/restlet/routing/Router;Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/routing/TemplateRoute;
    .locals 11
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "targetDescriptor"    # Ljava/lang/String;
    .param p3, "uriPattern"    # Ljava/lang/String;
    .param p4, "defaultRoute"    # Z

    .prologue
    .line 248
    const/4 v3, 0x0

    .line 249
    .local v3, "route":Lorg/restlet/routing/TemplateRoute;
    const/4 v6, 0x0

    .line 253
    .local v6, "targetClassName":Ljava/lang/String;
    :try_start_0
    const-string v6, "org.restlet.ext.wadl.WadlApplication"

    .line 254
    invoke-static {v6}, Lorg/restlet/engine/Engine;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 257
    .local v5, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/Context;->getClientDispatcher()Lorg/restlet/Restlet;

    move-result-object v7

    new-instance v8, Lorg/restlet/Request;

    sget-object v9, Lorg/restlet/data/Method;->GET:Lorg/restlet/data/Method;

    invoke-direct {v8, v9, p2}, Lorg/restlet/Request;-><init>(Lorg/restlet/data/Method;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lorg/restlet/Restlet;->handle(Lorg/restlet/Request;)Lorg/restlet/Response;

    move-result-object v2

    .line 260
    .local v2, "response":Lorg/restlet/Response;
    invoke-virtual {v2}, Lorg/restlet/Response;->getStatus()Lorg/restlet/data/Status;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/data/Status;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lorg/restlet/Response;->isEntityAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    invoke-virtual {v2}, Lorg/restlet/Response;->getEntity()Lorg/restlet/representation/Representation;

    move-result-object v1

    .line 265
    .local v1, "representation":Lorg/restlet/representation/Representation;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/restlet/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lorg/restlet/representation/Representation;

    aput-object v9, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v10

    invoke-virtual {v10}, Lorg/restlet/Context;->createChildContext()Lorg/restlet/Context;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/Application;

    .line 270
    .local v4, "target":Lorg/restlet/Application;
    if-eqz v4, :cond_0

    .line 271
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 272
    invoke-virtual {p1, p3, v4}, Lorg/restlet/routing/Router;->attach(Ljava/lang/String;Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v3

    .line 310
    .end local v1    # "representation":Lorg/restlet/representation/Representation;
    .end local v2    # "response":Lorg/restlet/Response;
    .end local v4    # "target":Lorg/restlet/Application;
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object v3

    .line 274
    .restart local v1    # "representation":Lorg/restlet/representation/Representation;
    .restart local v2    # "response":Lorg/restlet/Response;
    .restart local v4    # "target":Lorg/restlet/Application;
    .restart local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1, v4}, Lorg/restlet/routing/Router;->attachDefault(Lorg/restlet/Restlet;)Lorg/restlet/routing/TemplateRoute;

    move-result-object v3

    goto :goto_0

    .line 278
    .end local v1    # "representation":Lorg/restlet/representation/Representation;
    .end local v4    # "target":Lorg/restlet/Application;
    :cond_2
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The target descriptor has not been found or is not available, or no client supporting the URI\'s protocol has been defined on this component. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 283
    .end local v2    # "response":Lorg/restlet/Response;
    .end local v5    # "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t find the target class. Please check that your classpath includes "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t instantiate the target class. Please check this class has an empty constructor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 293
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t instantiate the target class. Please check that you have to proper access rights to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t invoke the constructor of the target class. Please check this class has a constructor with a single parameter of Context "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Couldn\'t instantiate the target class. An exception was thrown while creating "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private getBoolean(Lorg/w3c/dom/Node;Z)Z
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 323
    move v1, p2

    .line 324
    .local v1, "value":Z
    if-eqz p1, :cond_0

    .line 326
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 331
    :cond_0
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    move v1, p2

    goto :goto_0
.end method

.method private getComponent()Lorg/restlet/Component;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentXmlParser;->component:Lorg/restlet/Component;

    return-object v0
.end method

.method private getFloat(Lorg/w3c/dom/Node;F)F
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "defaultValue"    # F

    .prologue
    .line 353
    move v1, p2

    .line 354
    .local v1, "value":F
    if-eqz p1, :cond_0

    .line 356
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    move v1, p2

    goto :goto_0
.end method

.method private getInt(Lorg/w3c/dom/Node;I)I
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "defaultValue"    # I

    .prologue
    .line 374
    move v1, p2

    .line 375
    .local v1, "value":I
    if-eqz p1, :cond_0

    .line 377
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    move v1, p2

    goto :goto_0
.end method

.method private getLogger()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 391
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Component;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method private getLong(Lorg/w3c/dom/Node;J)J
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "defaultValue"    # J

    .prologue
    .line 404
    move-wide v2, p2

    .line 405
    .local v2, "value":J
    if-eqz p1, :cond_0

    .line 407
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 412
    :cond_0
    :goto_0
    return-wide v2

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    move-wide v2, p2

    goto :goto_0
.end method

.method private getProtocol(Ljava/lang/String;)Lorg/restlet/data/Protocol;
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 424
    invoke-static {p1}, Lorg/restlet/data/Protocol;->valueOf(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v0

    .line 425
    .local v0, "protocol":Lorg/restlet/data/Protocol;
    if-nez v0, :cond_0

    .line 426
    new-instance v0, Lorg/restlet/data/Protocol;

    .end local v0    # "protocol":Lorg/restlet/data/Protocol;
    invoke-direct {v0, p1}, Lorg/restlet/data/Protocol;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0    # "protocol":Lorg/restlet/data/Protocol;
    :cond_0
    return-object v0
.end method

.method private getXmlConfiguration()Lorg/restlet/representation/Representation;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentXmlParser;->xmlConfiguration:Lorg/restlet/representation/Representation;

    return-object v0
.end method

.method private static isParameter(Lorg/w3c/dom/Node;)Z
    .locals 2
    .param p0, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    const-string v0, "parameter"

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseHost(Lorg/restlet/routing/VirtualHost;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "host"    # Lorg/restlet/routing/VirtualHost;
    .param p2, "hostNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 710
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/component/ComponentXmlParser;->parseRouter(Lorg/restlet/routing/Router;Lorg/w3c/dom/Node;)V

    .line 712
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "hostDomain"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 713
    .local v0, "item":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setHostDomain(Ljava/lang/String;)V

    .line 716
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "hostPort"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 718
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setHostPort(Ljava/lang/String;)V

    .line 720
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "hostScheme"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 722
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setHostScheme(Ljava/lang/String;)V

    .line 724
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "resourceDomain"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 726
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setResourceDomain(Ljava/lang/String;)V

    .line 728
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "resourcePort"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 729
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 730
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setResourcePort(Ljava/lang/String;)V

    .line 732
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "resourceScheme"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 734
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setResourceScheme(Ljava/lang/String;)V

    .line 736
    :cond_5
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "serverAddress"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 737
    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 738
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setServerAddress(Ljava/lang/String;)V

    .line 740
    :cond_6
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "serverPort"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 741
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 742
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/VirtualHost;->setServerPort(Ljava/lang/String;)V

    .line 744
    :cond_7
    return-void
.end method

.method private static parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;
    .locals 5
    .param p0, "domNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, "result":Lorg/restlet/data/Parameter;
    invoke-static {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    const/4 v3, 0x0

    .line 112
    :goto_0
    return-object v3

    .line 104
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 105
    .local v0, "nameNode":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "value"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 107
    .local v2, "valueNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 108
    new-instance v1, Lorg/restlet/data/Parameter;

    .end local v1    # "result":Lorg/restlet/data/Parameter;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/restlet/data/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "result":Lorg/restlet/data/Parameter;
    :cond_1
    move-object v3, v1

    .line 112
    goto :goto_0
.end method

.method private parseRestlet(Lorg/restlet/Restlet;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "restlet"    # Lorg/restlet/Restlet;
    .param p2, "restletNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 756
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 757
    .local v0, "item":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 758
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/Restlet;->setName(Ljava/lang/String;)V

    .line 760
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "description"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 762
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/Restlet;->setDescription(Ljava/lang/String;)V

    .line 764
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "owner"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 766
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/Restlet;->setOwner(Ljava/lang/String;)V

    .line 768
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "author"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 769
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 770
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/restlet/Restlet;->setOwner(Ljava/lang/String;)V

    .line 772
    :cond_3
    return-void
.end method

.method private parseRouter(Lorg/restlet/routing/Router;Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "routerNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 783
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/component/ComponentXmlParser;->parseRestlet(Lorg/restlet/Restlet;Lorg/w3c/dom/Node;)V

    .line 785
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "defaultMatchingMode"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 787
    .local v0, "item":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 788
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getDefaultMatchingMode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->setDefaultMatchingMode(I)V

    .line 792
    :cond_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "defaultMatchingQuery"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_1

    .line 794
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getDefaultMatchingQuery()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->setDefaultMatchingQuery(Z)V

    .line 798
    :cond_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "maxAttempts"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 799
    if-eqz v0, :cond_2

    .line 800
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getMaxAttempts()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->setMaxAttempts(I)V

    .line 804
    :cond_2
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "routingMode"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_3

    .line 806
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getRoutingMode()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->setRoutingMode(I)V

    .line 810
    :cond_3
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "requiredScore"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_4

    .line 812
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getRequiredScore()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getFloat(Lorg/w3c/dom/Node;F)F

    move-result v1

    invoke-virtual {p1, v1}, Lorg/restlet/routing/Router;->setRequiredScore(F)V

    .line 816
    :cond_4
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "retryDelay"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_5

    .line 818
    invoke-direct {p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/routing/Router;->getRetryDelay()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lorg/restlet/engine/component/ComponentXmlParser;->getLong(Lorg/w3c/dom/Node;J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/restlet/routing/Router;->setRetryDelay(J)V

    .line 823
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/restlet/engine/component/ComponentXmlParser;->setAttach(Lorg/restlet/routing/Router;Lorg/w3c/dom/Node;)V

    .line 824
    return-void
.end method

.method private setAttach(Lorg/restlet/routing/Router;Lorg/w3c/dom/Node;)V
    .locals 17
    .param p1, "router"    # Lorg/restlet/routing/Router;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 835
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 837
    .local v5, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v7, v14, :cond_9

    .line 838
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 840
    .local v4, "childNode":Lorg/w3c/dom/Node;
    invoke-static {v4}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 841
    invoke-static {v4}, Lorg/restlet/engine/component/ComponentXmlParser;->parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;

    move-result-object v10

    .line 843
    .local v10, "p":Lorg/restlet/data/Parameter;
    if-eqz v10, :cond_0

    .line 844
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/routing/Router;->getContext()Lorg/restlet/Context;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v10    # "p":Lorg/restlet/data/Parameter;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 846
    :cond_1
    const-string v14, "attach"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "attachDefault"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 848
    :cond_2
    const/4 v13, 0x0

    .line 849
    .local v13, "uriPattern":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "uriPattern"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 852
    .local v8, "item":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_5

    .line 853
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 858
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "default"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 859
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v14

    if-nez v14, :cond_3

    const-string v14, "attachDefault"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    :cond_3
    const/4 v3, 0x1

    .line 863
    .local v3, "bDefault":Z
    :goto_2
    const/4 v11, 0x0

    .line 864
    .local v11, "route":Lorg/restlet/routing/TemplateRoute;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "targetClass"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 866
    if-eqz v8, :cond_7

    .line 867
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13, v3}, Lorg/restlet/engine/component/ComponentXmlParser;->attach(Lorg/restlet/routing/Router;Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/routing/TemplateRoute;

    move-result-object v11

    .line 882
    :goto_3
    if-eqz v11, :cond_0

    .line 883
    invoke-virtual {v11}, Lorg/restlet/routing/TemplateRoute;->getTemplate()Lorg/restlet/routing/Template;

    move-result-object v12

    .line 884
    .local v12, "template":Lorg/restlet/routing/Template;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "matchingMode"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 886
    invoke-virtual/range {p1 .. p1}, Lorg/restlet/routing/Router;->getDefaultMatchingMode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v14

    invoke-virtual {v12, v14}, Lorg/restlet/routing/Template;->setMatchingMode(I)V

    .line 888
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "defaultVariableType"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 890
    invoke-virtual {v12}, Lorg/restlet/routing/Template;->getDefaultVariable()Lorg/restlet/routing/Variable;

    move-result-object v14

    const/16 v15, 0xe

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v15

    invoke-virtual {v14, v15}, Lorg/restlet/routing/Variable;->setType(I)V

    .line 894
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 895
    .local v6, "childNodes2":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_4
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v9, v14, :cond_0

    .line 896
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 897
    .local v2, "aNode":Lorg/w3c/dom/Node;
    invoke-static {v2}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 898
    invoke-static {v2}, Lorg/restlet/engine/component/ComponentXmlParser;->parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;

    move-result-object v10

    .line 900
    .restart local v10    # "p":Lorg/restlet/data/Parameter;
    if-eqz v10, :cond_4

    .line 901
    invoke-virtual {v11}, Lorg/restlet/routing/TemplateRoute;->getNext()Lorg/restlet/Restlet;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/Restlet;->getContext()Lorg/restlet/Context;

    move-result-object v14

    invoke-virtual {v14}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v14

    invoke-virtual {v14, v10}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v10    # "p":Lorg/restlet/data/Parameter;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 855
    .end local v2    # "aNode":Lorg/w3c/dom/Node;
    .end local v3    # "bDefault":Z
    .end local v6    # "childNodes2":Lorg/w3c/dom/NodeList;
    .end local v9    # "j":I
    .end local v11    # "route":Lorg/restlet/routing/TemplateRoute;
    .end local v12    # "template":Lorg/restlet/routing/Template;
    :cond_5
    const-string v13, ""

    goto/16 :goto_1

    .line 859
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 870
    .restart local v3    # "bDefault":Z
    .restart local v11    # "route":Lorg/restlet/routing/TemplateRoute;
    :cond_7
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    const-string v15, "targetDescriptor"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 872
    if-eqz v8, :cond_8

    .line 873
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13, v3}, Lorg/restlet/engine/component/ComponentXmlParser;->attachWithDescriptor(Lorg/restlet/routing/Router;Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/routing/TemplateRoute;

    move-result-object v11

    goto/16 :goto_3

    .line 876
    :cond_8
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v14

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v16, "Both targetClass name and targetDescriptor are missing. Couldn\'t attach a new route."

    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 909
    .end local v3    # "bDefault":Z
    .end local v4    # "childNode":Lorg/w3c/dom/Node;
    .end local v8    # "item":Lorg/w3c/dom/Node;
    .end local v11    # "route":Lorg/restlet/routing/TemplateRoute;
    .end local v13    # "uriPattern":Ljava/lang/String;
    :cond_9
    return-void
.end method


# virtual methods
.method public parse()V
    .locals 33

    .prologue
    .line 446
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v13

    .line 447
    .local v13, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 448
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 449
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v13, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    .line 451
    new-instance v16, Lorg/restlet/engine/util/DefaultSaxHandler;

    invoke-direct/range {v16 .. v16}, Lorg/restlet/engine/util/DefaultSaxHandler;-><init>()V

    .line 452
    .local v16, "handler":Lorg/restlet/engine/util/DefaultSaxHandler;
    invoke-virtual {v13}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v12

    .line 453
    .local v12, "db":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 454
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 470
    new-instance v30, Lorg/xml/sax/InputSource;

    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getXmlConfiguration()Lorg/restlet/representation/Representation;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lorg/restlet/representation/Representation;->getReader()Ljava/io/Reader;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v30

    invoke-virtual {v12, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v14

    .line 474
    .local v14, "document":Lorg/w3c/dom/Document;
    const-string v30, "component"

    invoke-interface {v14}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1a

    .line 476
    invoke-interface {v14}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 480
    .local v10, "childNodes":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_e

    .line 481
    move/from16 v0, v18

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 482
    .local v8, "childNode":Lorg/w3c/dom/Node;
    const-string v30, "client"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 483
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "protocol"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 485
    .local v20, "item":Lorg/w3c/dom/Node;
    const/4 v11, 0x0

    .line 487
    .local v11, "client":Lorg/restlet/Client;
    if-nez v20, :cond_3

    .line 488
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "protocols"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 491
    if-eqz v20, :cond_1

    .line 492
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 494
    .local v27, "protocols":[Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v28, "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    move-object/from16 v7, v27

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    aget-object v26, v7, v19

    .line 497
    .local v26, "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getProtocol(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 500
    .end local v26    # "protocol":Ljava/lang/String;
    :cond_0
    new-instance v11, Lorg/restlet/Client;

    .end local v11    # "client":Lorg/restlet/Client;
    new-instance v30, Lorg/restlet/Context;

    invoke-direct/range {v30 .. v30}, Lorg/restlet/Context;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v11, v0, v1}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Ljava/util/List;)V

    .line 508
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v27    # "protocols":[Ljava/lang/String;
    .end local v28    # "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    .restart local v11    # "client":Lorg/restlet/Client;
    :cond_1
    :goto_2
    if-eqz v11, :cond_c

    .line 509
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getClients()Lorg/restlet/util/ClientList;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lorg/restlet/util/ClientList;->add(Lorg/restlet/Client;)Z

    .line 512
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseRestlet(Lorg/restlet/Restlet;Lorg/w3c/dom/Node;)V

    .line 515
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_3
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 517
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 520
    .local v9, "childNode2":Lorg/w3c/dom/Node;
    invoke-static {v9}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 521
    invoke-static {v9}, Lorg/restlet/engine/component/ComponentXmlParser;->parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;

    move-result-object v23

    .line 523
    .local v23, "p":Lorg/restlet/data/Parameter;
    if-eqz v23, :cond_2

    .line 524
    invoke-virtual {v11}, Lorg/restlet/Client;->getContext()Lorg/restlet/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v23    # "p":Lorg/restlet/data/Parameter;
    :cond_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 504
    .end local v9    # "childNode2":Lorg/w3c/dom/Node;
    .end local v21    # "j":I
    :cond_3
    new-instance v11, Lorg/restlet/Client;

    .end local v11    # "client":Lorg/restlet/Client;
    new-instance v30, Lorg/restlet/Context;

    invoke-direct/range {v30 .. v30}, Lorg/restlet/Context;-><init>()V

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getProtocol(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-direct {v11, v0, v1}, Lorg/restlet/Client;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;)V

    .restart local v11    # "client":Lorg/restlet/Client;
    goto :goto_2

    .line 530
    .end local v11    # "client":Lorg/restlet/Client;
    .end local v20    # "item":Lorg/w3c/dom/Node;
    :cond_4
    const-string v30, "server"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 531
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "protocol"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 533
    .restart local v20    # "item":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "port"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v25

    .line 535
    .local v25, "portNode":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "address"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 537
    .local v6, "addressNode":Lorg/w3c/dom/Node;
    const/16 v29, 0x0

    .line 539
    .local v29, "server":Lorg/restlet/Server;
    if-nez v20, :cond_a

    .line 540
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "protocols"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 543
    if-eqz v20, :cond_6

    .line 544
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 546
    .restart local v27    # "protocols":[Ljava/lang/String;
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .restart local v28    # "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    move-object/from16 v7, v27

    .restart local v7    # "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v22, v0

    .restart local v22    # "len$":I
    const/16 v19, 0x0

    .restart local v19    # "i$":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v26, v7, v19

    .line 549
    .restart local v26    # "protocol":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getProtocol(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 552
    .end local v26    # "protocol":Ljava/lang/String;
    :cond_5
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v24

    .line 555
    .local v24, "port":I
    const/16 v30, -0x1

    move/from16 v0, v24

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 556
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v30

    const-string v31, "Please specify a port when defining a list of protocols."

    invoke-virtual/range {v30 .. v31}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 577
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "port":I
    .end local v27    # "protocols":[Ljava/lang/String;
    .end local v28    # "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    :cond_6
    :goto_5
    if-eqz v29, :cond_c

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseRestlet(Lorg/restlet/Restlet;Lorg/w3c/dom/Node;)V

    .line 581
    if-eqz v6, :cond_7

    .line 582
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "address":Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 585
    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lorg/restlet/Server;->setAddress(Ljava/lang/String;)V

    .line 590
    .end local v5    # "address":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x0

    .restart local v21    # "j":I
    :goto_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 592
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 595
    .restart local v9    # "childNode2":Lorg/w3c/dom/Node;
    invoke-static {v9}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 596
    invoke-static {v9}, Lorg/restlet/engine/component/ComponentXmlParser;->parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;

    move-result-object v23

    .line 598
    .restart local v23    # "p":Lorg/restlet/data/Parameter;
    if-eqz v23, :cond_8

    .line 599
    invoke-virtual/range {v29 .. v29}, Lorg/restlet/Server;->getContext()Lorg/restlet/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    .line 591
    .end local v23    # "p":Lorg/restlet/data/Parameter;
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 560
    .end local v9    # "childNode2":Lorg/w3c/dom/Node;
    .end local v21    # "j":I
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v22    # "len$":I
    .restart local v24    # "port":I
    .restart local v27    # "protocols":[Ljava/lang/String;
    .restart local v28    # "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    :cond_9
    new-instance v29, Lorg/restlet/Server;

    .end local v29    # "server":Lorg/restlet/Server;
    new-instance v30, Lorg/restlet/Context;

    invoke-direct/range {v30 .. v30}, Lorg/restlet/Context;-><init>()V

    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v31

    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Ljava/util/List;ILorg/restlet/Restlet;)V

    .restart local v29    # "server":Lorg/restlet/Server;
    goto :goto_5

    .line 568
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v22    # "len$":I
    .end local v24    # "port":I
    .end local v27    # "protocols":[Ljava/lang/String;
    .end local v28    # "protocolsList":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Protocol;>;"
    :cond_a
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/restlet/engine/component/ComponentXmlParser;->getProtocol(Ljava/lang/String;)Lorg/restlet/data/Protocol;

    move-result-object v26

    .line 570
    .local v26, "protocol":Lorg/restlet/data/Protocol;
    new-instance v29, Lorg/restlet/Server;

    .end local v29    # "server":Lorg/restlet/Server;
    new-instance v30, Lorg/restlet/Context;

    invoke-direct/range {v30 .. v30}, Lorg/restlet/Context;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lorg/restlet/data/Protocol;->getDefaultPort()I

    move-result v31

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getInt(Lorg/w3c/dom/Node;I)I

    move-result v31

    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/restlet/util/ServerList;->getNext()Lorg/restlet/Restlet;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    move/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/restlet/Server;-><init>(Lorg/restlet/Context;Lorg/restlet/data/Protocol;ILorg/restlet/Restlet;)V

    .restart local v29    # "server":Lorg/restlet/Server;
    goto/16 :goto_5

    .line 605
    .end local v26    # "protocol":Lorg/restlet/data/Protocol;
    .restart local v21    # "j":I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getServers()Lorg/restlet/util/ServerList;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lorg/restlet/util/ServerList;->add(Lorg/restlet/Server;)Z

    .line 480
    .end local v6    # "addressNode":Lorg/w3c/dom/Node;
    .end local v20    # "item":Lorg/w3c/dom/Node;
    .end local v21    # "j":I
    .end local v25    # "portNode":Lorg/w3c/dom/Node;
    .end local v29    # "server":Lorg/restlet/Server;
    :cond_c
    :goto_7
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 607
    :cond_d
    invoke-static {v8}, Lorg/restlet/engine/component/ComponentXmlParser;->isParameter(Lorg/w3c/dom/Node;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 608
    invoke-static {v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseParameter(Lorg/w3c/dom/Node;)Lorg/restlet/data/Parameter;

    move-result-object v23

    .line 610
    .restart local v23    # "p":Lorg/restlet/data/Parameter;
    if-eqz v23, :cond_c

    .line 611
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Context;->getParameters()Lorg/restlet/util/Series;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 694
    .end local v8    # "childNode":Lorg/w3c/dom/Node;
    .end local v10    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v12    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "document":Lorg/w3c/dom/Document;
    .end local v16    # "handler":Lorg/restlet/engine/util/DefaultSaxHandler;
    .end local v18    # "i":I
    .end local v23    # "p":Lorg/restlet/data/Parameter;
    :catch_0
    move-exception v15

    .line 695
    .local v15, "e":Ljava/lang/Exception;
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v30

    sget-object v31, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v32, "Unable to parse the Component XML configuration."

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2, v15}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_8
    return-void

    .line 613
    .restart local v8    # "childNode":Lorg/w3c/dom/Node;
    .restart local v10    # "childNodes":Lorg/w3c/dom/NodeList;
    .restart local v12    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v13    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "document":Lorg/w3c/dom/Document;
    .restart local v16    # "handler":Lorg/restlet/engine/util/DefaultSaxHandler;
    .restart local v18    # "i":I
    :cond_f
    :try_start_1
    const-string v30, "defaultHost"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 614
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getDefaultHost()Lorg/restlet/routing/VirtualHost;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseHost(Lorg/restlet/routing/VirtualHost;Lorg/w3c/dom/Node;)V

    goto :goto_7

    .line 615
    :cond_10
    const-string v30, "host"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 616
    new-instance v17, Lorg/restlet/routing/VirtualHost;

    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v30

    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/restlet/routing/VirtualHost;-><init>(Lorg/restlet/Context;)V

    .line 618
    .local v17, "host":Lorg/restlet/routing/VirtualHost;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseHost(Lorg/restlet/routing/VirtualHost;Lorg/w3c/dom/Node;)V

    .line 619
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getHosts()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 620
    .end local v17    # "host":Lorg/restlet/routing/VirtualHost;
    :cond_11
    const-string v30, "internalRouter"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 621
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getInternalRouter()Lorg/restlet/routing/Router;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v8}, Lorg/restlet/engine/component/ComponentXmlParser;->parseRouter(Lorg/restlet/routing/Router;Lorg/w3c/dom/Node;)V

    goto/16 :goto_7

    .line 623
    :cond_12
    const-string v30, "logService"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    .line 624
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "logFormat"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 627
    .restart local v20    # "item":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_13

    .line 628
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getLogService()Lorg/restlet/service/LogService;

    move-result-object v30

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/LogService;->setResponseLogFormat(Ljava/lang/String;)V

    .line 632
    :cond_13
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "loggerName"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 635
    if-eqz v20, :cond_14

    .line 636
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getLogService()Lorg/restlet/service/LogService;

    move-result-object v30

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/LogService;->setLoggerName(Ljava/lang/String;)V

    .line 640
    :cond_14
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "enabled"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 643
    if-eqz v20, :cond_15

    .line 644
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getLogService()Lorg/restlet/service/LogService;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/LogService;->setEnabled(Z)V

    .line 648
    :cond_15
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "identityCheck"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 651
    if-eqz v20, :cond_c

    .line 652
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getLogService()Lorg/restlet/service/LogService;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/LogService;->setIdentityCheck(Z)V

    goto/16 :goto_7

    .line 655
    .end local v20    # "item":Lorg/w3c/dom/Node;
    :cond_16
    const-string v30, "statusService"

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 656
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "contactEmail"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 659
    .restart local v20    # "item":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_17

    .line 660
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v30

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/StatusService;->setContactEmail(Ljava/lang/String;)V

    .line 664
    :cond_17
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "enabled"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 667
    if-eqz v20, :cond_18

    .line 668
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/StatusService;->setEnabled(Z)V

    .line 672
    :cond_18
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "homeRef"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 675
    if-eqz v20, :cond_19

    .line 676
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v30

    new-instance v31, Lorg/restlet/data/Reference;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/StatusService;->setHomeRef(Lorg/restlet/data/Reference;)V

    .line 680
    :cond_19
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v30

    const-string v31, "overwrite"

    invoke-interface/range {v30 .. v31}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 683
    if-eqz v20, :cond_c

    .line 684
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getComponent()Lorg/restlet/Component;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lorg/restlet/Component;->getStatusService()Lorg/restlet/service/StatusService;

    move-result-object v30

    const/16 v31, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/restlet/engine/component/ComponentXmlParser;->getBoolean(Lorg/w3c/dom/Node;Z)Z

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lorg/restlet/service/StatusService;->setOverwriting(Z)V

    goto/16 :goto_7

    .line 690
    .end local v8    # "childNode":Lorg/w3c/dom/Node;
    .end local v10    # "childNodes":Lorg/w3c/dom/NodeList;
    .end local v18    # "i":I
    .end local v20    # "item":Lorg/w3c/dom/Node;
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lorg/restlet/engine/component/ComponentXmlParser;->getLogger()Ljava/util/logging/Logger;

    move-result-object v30

    sget-object v31, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v32, "Unable to find the root \"component\" node in the XML configuration."

    invoke-virtual/range {v30 .. v32}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8
.end method
