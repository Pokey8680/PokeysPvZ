.class public final Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/millennialmedia/google/gson/InstanceCreator",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/millennialmedia/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 113
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 116
    :cond_0
    new-instance v2, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$3;

    invoke-direct {v2, p0, v0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 152
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$4;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    .line 248
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 162
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$5;

    invoke-direct {v0, p0, p1}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 184
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$6;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 193
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 194
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 203
    :cond_3
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$8;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 214
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 215
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 224
    :cond_5
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/millennialmedia/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 228
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$10;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 237
    :cond_6
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$11;

    invoke-direct {v0, p0}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;)V

    goto :goto_0

    .line 248
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$12;

    invoke-direct {v0, p0, p2, p1}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lcom/millennialmedia/google/gson/reflect/TypeToken;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/millennialmedia/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/millennialmedia/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "typeToken":Lcom/millennialmedia/google/gson/reflect/TypeToken;, "Lcom/millennialmedia/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 57
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lcom/millennialmedia/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 63
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    iget-object v6, p0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/google/gson/InstanceCreator;

    .line 65
    .local v5, "typeCreator":Lcom/millennialmedia/google/gson/InstanceCreator;, "Lcom/millennialmedia/google/gson/InstanceCreator<TT;>;"
    if-eqz v5, :cond_1

    .line 66
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$1;

    invoke-direct {v0, p0, v5, v4}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Lcom/millennialmedia/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    .line 104
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    iget-object v6, p0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/millennialmedia/google/gson/InstanceCreator;

    .line 81
    .local v3, "rawTypeCreator":Lcom/millennialmedia/google/gson/InstanceCreator;, "Lcom/millennialmedia/google/gson/InstanceCreator<TT;>;"
    if-eqz v3, :cond_2

    .line 82
    new-instance v0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;Lcom/millennialmedia/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0, v2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    move-result-object v0

    .line 93
    .local v0, "defaultConstructor":Lcom/millennialmedia/google/gson/internal/ObjectConstructor;, "Lcom/millennialmedia/google/gson/internal/ObjectConstructor<TT;>;"
    if-nez v0, :cond_0

    .line 97
    invoke-direct {p0, v4, v2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 99
    .local v1, "defaultImplementation":Lcom/millennialmedia/google/gson/internal/ObjectConstructor;, "Lcom/millennialmedia/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 100
    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/millennialmedia/google/gson/internal/ObjectConstructor;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/millennialmedia/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
