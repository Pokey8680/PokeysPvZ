.class public Lroboguice/inject/ContentViewListener;
.super Ljava/lang/Object;
.source "ContentViewListener.java"


# annotations
.annotation runtime Lroboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionallySetContentView(Lroboguice/context/event/OnCreateEvent;)V
    .locals 4
    .param p1    # Lroboguice/context/event/OnCreateEvent;
        .annotation runtime Lroboguice/event/Observes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lroboguice/context/event/OnCreateEvent",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "ignored":Lroboguice/context/event/OnCreateEvent;, "Lroboguice/context/event/OnCreateEvent<*>;"
    iget-object v2, p0, Lroboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 17
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Landroid/content/Context;

    if-eq v1, v2, :cond_0

    .line 18
    const-class v2, Lroboguice/inject/ContentView;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ContentView;

    .line 19
    .local v0, "annotation":Lroboguice/inject/ContentView;
    if-eqz v0, :cond_1

    .line 20
    iget-object v2, p0, Lroboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-interface {v0}, Lroboguice/inject/ContentView;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 25
    .end local v0    # "annotation":Lroboguice/inject/ContentView;
    :cond_0
    return-void

    .line 23
    .restart local v0    # "annotation":Lroboguice/inject/ContentView;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 24
    goto :goto_0
.end method
