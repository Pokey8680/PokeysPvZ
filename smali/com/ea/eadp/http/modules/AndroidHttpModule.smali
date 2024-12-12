.class public Lcom/ea/eadp/http/modules/AndroidHttpModule;
.super Lcom/google/inject/AbstractModule;
.source "AndroidHttpModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .prologue
    .line 14
    const-class v0, Lcom/ea/eadp/http/services/HttpService;

    invoke-virtual {p0, v0}, Lcom/ea/eadp/http/modules/AndroidHttpModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/ea/eadp/http/services/AndroidHttpService;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 15
    return-void
.end method
