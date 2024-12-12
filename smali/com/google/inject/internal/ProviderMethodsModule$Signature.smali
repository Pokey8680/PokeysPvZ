.class final Lcom/google/inject/internal/ProviderMethodsModule$Signature;
.super Ljava/lang/Object;
.source "ProviderMethodsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/ProviderMethodsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Signature"
.end annotation


# instance fields
.field final hashCode:I

.field final name:Ljava/lang/String;

.field final parameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/inject/internal/ProviderMethodsModule;


# direct methods
.method constructor <init>(Lcom/google/inject/internal/ProviderMethodsModule;Ljava/lang/reflect/Method;)V
    .locals 6
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->this$0:Lcom/google/inject/internal/ProviderMethodsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/google/inject/internal/ProviderMethodsModule;->access$000(Lcom/google/inject/internal/ProviderMethodsModule;)Lcom/google/inject/TypeLiteral;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/inject/TypeLiteral;->getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "resolvedParameterTypes":Ljava/util/List;, "Ljava/util/List<Lcom/google/inject/TypeLiteral<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Class;

    iput-object v4, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/inject/TypeLiteral;

    .line 176
    .local v3, "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    iget-object v4, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-virtual {v3}, Lcom/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_0

    .line 178
    .end local v3    # "type":Lcom/google/inject/TypeLiteral;, "Lcom/google/inject/TypeLiteral<*>;"
    :cond_0
    iget-object v4, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->hashCode:I

    .line 179
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 182
    instance-of v2, p1, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 183
    check-cast v0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;

    .line 184
    .local v0, "other":Lcom/google/inject/internal/ProviderMethodsModule$Signature;
    iget-object v2, v0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    iget-object v3, v0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->parameters:[Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 186
    .end local v0    # "other":Lcom/google/inject/internal/ProviderMethodsModule$Signature;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/google/inject/internal/ProviderMethodsModule$Signature;->hashCode:I

    return v0
.end method
