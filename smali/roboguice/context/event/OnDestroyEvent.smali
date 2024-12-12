.class public Lroboguice/context/event/OnDestroyEvent;
.super Ljava/lang/Object;
.source "OnDestroyEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lroboguice/context/event/OnDestroyEvent;, "Lroboguice/context/event/OnDestroyEvent<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lroboguice/context/event/OnDestroyEvent;->context:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lroboguice/context/event/OnDestroyEvent;, "Lroboguice/context/event/OnDestroyEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnDestroyEvent;->context:Landroid/content/Context;

    return-object v0
.end method
