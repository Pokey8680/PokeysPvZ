.class public Lorg/restlet/util/Series;
.super Lorg/restlet/util/WrapperList;
.source "Series.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/restlet/util/NamedValue",
        "<",
        "Ljava/lang/String;",
        ">;>",
        "Lorg/restlet/util/WrapperList",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_VALUE:Ljava/lang/Object;


# instance fields
.field private final entryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/restlet/util/WrapperList;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lorg/restlet/util/WrapperList;-><init>(I)V

    .line 101
    iput-object p1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "delegate":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p2}, Lorg/restlet/util/WrapperList;-><init>(Ljava/util/List;)V

    .line 112
    iput-object p1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    .line 113
    return-void
.end method

.method private equals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/String;
    .param p2, "value2"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 225
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    .line 227
    .local v0, "result":Z
    :goto_0
    if-nez v0, :cond_0

    .line 228
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 229
    if-eqz p3, :cond_2

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 237
    :cond_0
    :goto_1
    return v0

    .line 225
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    .restart local v0    # "result":Z
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public static unmodifiableSeries(Lorg/restlet/util/Series;)Lorg/restlet/util/Series;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<+",
            "Lorg/restlet/util/NamedValue;",
            ">;)",
            "Lorg/restlet/util/Series",
            "<+",
            "Lorg/restlet/util/NamedValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "series":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<+Lorg/restlet/util/NamedValue;>;"
    new-instance v0, Lorg/restlet/util/Series;

    iget-object v1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/restlet/util/Series;->getDelegate()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/Series;->createEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copyTo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 141
    .local v0, "currentValue":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v0    # "currentValue":Ljava/lang/Object;
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/util/NamedValue;

    .line 144
    .local v2, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 147
    .restart local v0    # "currentValue":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v4, v0, Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 152
    check-cast v3, Ljava/util/List;

    .line 161
    :goto_1
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 162
    sget-object v4, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .restart local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 168
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/restlet/util/Series;->EMPTY_VALUE:Ljava/lang/Object;

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    :cond_4
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    .end local v0    # "currentValue":Ljava/lang/Object;
    .end local v2    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Unable to create a series entry"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createSeries(Ljava/util/List;)Lorg/restlet/util/Series;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lorg/restlet/util/Series",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    .local p1, "delegate":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lorg/restlet/util/Series;

    iget-object v1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->getFirst(Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    move-result-object v0

    return-object v0
.end method

.method public getFirst(Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;

    .line 262
    .local v1, "param":Lorg/restlet/util/NamedValue;, "TT;"
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2}, Lorg/restlet/util/Series;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    .end local v1    # "param":Lorg/restlet/util/NamedValue;, "TT;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 331
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 291
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/util/Series;->getFirstValue(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstValue(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 309
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    move-object v1, p3

    .line 310
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/Series;->getFirst(Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    move-result-object v0

    .line 312
    .local v0, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    invoke-interface {v0}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 316
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNames()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 342
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;

    .line 343
    .local v1, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 346
    .end local v1    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public getValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 359
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const-string v0, ","

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/restlet/util/Series;->getValues(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 376
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v2, 0x0

    .line 377
    .local v2, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 379
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;

    .line 380
    .local v1, "param":Lorg/restlet/util/NamedValue;, "TT;"
    if-eqz p3, :cond_1

    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    :cond_2
    if-nez v3, :cond_4

    .line 383
    if-nez v2, :cond_3

    .line 384
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0

    .line 386
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 391
    :cond_4
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 396
    .end local v1    # "param":Lorg/restlet/util/NamedValue;, "TT;"
    :cond_5
    if-eqz v3, :cond_6

    .line 397
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 400
    :cond_6
    return-object v2
.end method

.method public getValuesArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 412
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->getValuesArray(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuesArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 473
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/restlet/util/Series;->getValuesArray(Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuesArray(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 426
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/util/Series;->getValuesArray(Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValuesArray(Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 444
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v2, 0x0

    .line 445
    .local v2, "result":[Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/Series;->subList(Ljava/lang/String;Z)Lorg/restlet/util/Series;

    move-result-object v1

    .line 447
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_1

    .line 448
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 449
    const/4 v3, 0x0

    aput-object p3, v2, v3

    .line 458
    :cond_0
    return-object v2

    .line 451
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 454
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/util/NamedValue;

    invoke-interface {v3}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 453
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getValuesMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 486
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;

    .line 487
    .local v1, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 488
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 492
    .end local v1    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    :cond_1
    return-object v2
.end method

.method public removeAll(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 503
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->removeAll(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 516
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    .line 517
    .local v0, "changed":Z
    const/4 v2, 0x0

    .line 519
    .local v2, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 520
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    check-cast v2, Lorg/restlet/util/NamedValue;

    .line 522
    .restart local v2    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lorg/restlet/util/Series;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 523
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 524
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    return v0
.end method

.method public removeFirst(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 540
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->removeFirst(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removeFirst(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z

    .prologue
    .line 554
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    .line 555
    .local v0, "changed":Z
    const/4 v2, 0x0

    .line 557
    .local v2, "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    check-cast v2, Lorg/restlet/util/NamedValue;

    .line 559
    .restart local v2    # "param":Lorg/restlet/util/NamedValue;, "Lorg/restlet/util/NamedValue<Ljava/lang/String;>;"
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lorg/restlet/util/Series;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 560
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 561
    const/4 v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/util/NamedValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 580
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/restlet/util/Series;->set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)Lorg/restlet/util/NamedValue;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v3, 0x0

    .line 597
    .local v3, "result":Lorg/restlet/util/NamedValue;, "TT;"
    const/4 v2, 0x0

    .line 598
    .local v2, "param":Lorg/restlet/util/NamedValue;, "TT;"
    const/4 v0, 0x0

    .line 600
    .local v0, "found":Z
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 601
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "param":Lorg/restlet/util/NamedValue;, "TT;"
    check-cast v2, Lorg/restlet/util/NamedValue;

    .line 603
    .restart local v2    # "param":Lorg/restlet/util/NamedValue;, "TT;"
    invoke-interface {v2}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1, p3}, Lorg/restlet/util/Series;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    if-eqz v0, :cond_1

    .line 606
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 609
    :cond_1
    const/4 v0, 0x1

    .line 610
    invoke-interface {v2, p2}, Lorg/restlet/util/NamedValue;->setValue(Ljava/lang/Object;)V

    .line 611
    move-object v3, v2

    goto :goto_0

    .line 616
    :cond_2
    if-nez v0, :cond_3

    .line 617
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/Series;->add(Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    :cond_3
    return-object v3
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 60
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    invoke-virtual {p0, p1, p2}, Lorg/restlet/util/Series;->subList(II)Lorg/restlet/util/Series;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Lorg/restlet/util/Series;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/restlet/util/Series",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 635
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    new-instance v0, Lorg/restlet/util/Series;

    iget-object v1, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lorg/restlet/util/Series;->getDelegate()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v0
.end method

.method public subList(Ljava/lang/String;)Lorg/restlet/util/Series;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/restlet/util/Series",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 647
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/restlet/util/Series;->subList(Ljava/lang/String;Z)Lorg/restlet/util/Series;

    move-result-object v0

    return-object v0
.end method

.method public subList(Ljava/lang/String;Z)Lorg/restlet/util/Series;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "ignoreCase"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/restlet/util/Series",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, "this":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    new-instance v2, Lorg/restlet/util/Series;

    iget-object v3, p0, Lorg/restlet/util/Series;->entryClass:Ljava/lang/Class;

    invoke-direct {v2, v3}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    .line 662
    .local v2, "result":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<TT;>;"
    invoke-virtual {p0}, Lorg/restlet/util/Series;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/util/NamedValue;

    .line 663
    .local v1, "param":Lorg/restlet/util/NamedValue;, "TT;"
    invoke-interface {v1}, Lorg/restlet/util/NamedValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lorg/restlet/util/Series;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 664
    invoke-virtual {v2, v1}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    .end local v1    # "param":Lorg/restlet/util/NamedValue;, "TT;"
    :cond_1
    return-object v2
.end method
