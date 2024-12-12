.class final Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;
.super Ljava/lang/Object;
.source "ComponentFactory.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codegist/crest/util/ComponentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MakeAccessible"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/reflect/Constructor;",
        ">;"
    }
.end annotation


# instance fields
.field private final constructor:Ljava/lang/reflect/Constructor;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;->constructor:Ljava/lang/reflect/Constructor;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Constructor;Lorg/codegist/crest/util/ComponentFactory$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/reflect/Constructor;
    .param p2, "x1"    # Lorg/codegist/crest/util/ComponentFactory$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;->run()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/reflect/Constructor;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 78
    iget-object v0, p0, Lorg/codegist/crest/util/ComponentFactory$MakeAccessible;->constructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method
