.class public Ljavax/ws/rs/core/GenericEntity;
.super Ljava/lang/Object;
.source "GenericEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final entity:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The entity must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Ljavax/ws/rs/core/GenericEntity;->entity:Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljavax/ws/rs/core/GenericEntity;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->type:Ljava/lang/reflect/Type;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->rawType:Ljava/lang/Class;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 2
    .param p2, "genericType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    .local p1, "entity":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    iput-object p1, p0, Ljavax/ws/rs/core/GenericEntity;->entity:Ljava/lang/Object;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->rawType:Ljava/lang/Class;

    .line 115
    iget-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->rawType:Ljava/lang/Class;

    invoke-direct {p0, v0, p2}, Ljavax/ws/rs/core/GenericEntity;->checkTypeCompatibility(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 116
    iput-object p2, p0, Ljavax/ws/rs/core/GenericEntity;->type:Ljava/lang/reflect/Type;

    .line 117
    return-void
.end method

.method private checkTypeCompatibility(Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p2, "t"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v4, p2, Ljava/lang/Class;

    if-eqz v4, :cond_0

    move-object v1, p2

    .line 121
    check-cast v1, Ljava/lang/Class;

    .line 122
    .local v1, "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    .end local v1    # "ct":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 124
    :cond_0
    instance-of v4, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_1

    move-object v2, p2

    .line 125
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 126
    .local v2, "pt":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 127
    .local v3, "rt":Ljava/lang/reflect/Type;
    invoke-direct {p0, p1, v3}, Ljavax/ws/rs/core/GenericEntity;->checkTypeCompatibility(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 129
    .end local v2    # "pt":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rt":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_2

    move-object v0, p2

    .line 130
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 131
    .local v0, "at":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 132
    .restart local v3    # "rt":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Ljavax/ws/rs/core/GenericEntity;->checkTypeCompatibility(Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 135
    .end local v0    # "at":Ljava/lang/reflect/GenericArrayType;
    .end local v3    # "rt":Ljava/lang/reflect/Type;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The type is incompatible with the class of the entity"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 143
    .local v1, "superclass":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_0

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Missing type parameter."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    .line 146
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 147
    .local v0, "parameterized":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    return-object v2
.end method


# virtual methods
.method public final getEntity()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    iget-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    iget-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Ljavax/ws/rs/core/GenericEntity;, "Ljavax/ws/rs/core/GenericEntity<TT;>;"
    iget-object v0, p0, Ljavax/ws/rs/core/GenericEntity;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
