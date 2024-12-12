.class public final Lcom/chillingo/libterms/ui/TermsObservable;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/ui/TermsObservable$Events;
    }
.end annotation


# static fields
.field private static b:Lcom/chillingo/libterms/ui/TermsObservable;


# instance fields
.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/libterms/ui/TermsObservable;->b:Lcom/chillingo/libterms/ui/TermsObservable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/chillingo/libterms/ui/TermsObservable;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/chillingo/libterms/ui/TermsObservable;->b:Lcom/chillingo/libterms/ui/TermsObservable;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/chillingo/libterms/ui/TermsObservable;

    invoke-direct {v0}, Lcom/chillingo/libterms/ui/TermsObservable;-><init>()V

    sput-object v0, Lcom/chillingo/libterms/ui/TermsObservable;->b:Lcom/chillingo/libterms/ui/TermsObservable;

    .line 30
    :cond_0
    sget-object v0, Lcom/chillingo/libterms/ui/TermsObservable;->b:Lcom/chillingo/libterms/ui/TermsObservable;

    return-object v0
.end method


# virtual methods
.method public downloadWasSuccessful()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/chillingo/libterms/ui/TermsObservable;->a:Z

    return v0
.end method

.method public notifyEvent(Lcom/chillingo/libterms/ui/TermsObservable$Events;)V
    .locals 0
    .param p1, "event"    # Lcom/chillingo/libterms/ui/TermsObservable$Events;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsObservable;->setChanged()V

    .line 49
    invoke-virtual {p0, p1}, Lcom/chillingo/libterms/ui/TermsObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public removeAllObservers()V
    .locals 0

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsObservable;->deleteObservers()V

    .line 54
    return-void
.end method

.method public setDownloadWasSuccessful(Z)V
    .locals 0
    .param p1, "downloadWasSuccessful"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/chillingo/libterms/ui/TermsObservable;->a:Z

    .line 40
    return-void
.end method
