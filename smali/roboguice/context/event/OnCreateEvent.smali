.class public Lroboguice/context/event/OnCreateEvent;
.super Ljava/lang/Object;
.source "OnCreateEvent.java"


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

.field protected savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lroboguice/context/event/OnCreateEvent;, "Lroboguice/context/event/OnCreateEvent<TT;>;"
    .local p1, "context":Landroid/content/Context;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p2, p0, Lroboguice/context/event/OnCreateEvent;->savedInstanceState:Landroid/os/Bundle;

    .line 21
    iput-object p1, p0, Lroboguice/context/event/OnCreateEvent;->context:Landroid/content/Context;

    .line 22
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
    .line 29
    .local p0, "this":Lroboguice/context/event/OnCreateEvent;, "Lroboguice/context/event/OnCreateEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnCreateEvent;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lroboguice/context/event/OnCreateEvent;, "Lroboguice/context/event/OnCreateEvent<TT;>;"
    iget-object v0, p0, Lroboguice/context/event/OnCreateEvent;->savedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method
