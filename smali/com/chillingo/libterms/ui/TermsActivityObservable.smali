.class public final Lcom/chillingo/libterms/ui/TermsActivityObservable;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;
    }
.end annotation


# static fields
.field private static b:Lcom/chillingo/libterms/ui/TermsActivityObservable;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->b:Lcom/chillingo/libterms/ui/TermsActivityObservable;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->a:Ljava/lang/Integer;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/chillingo/libterms/ui/TermsActivityObservable;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->b:Lcom/chillingo/libterms/ui/TermsActivityObservable;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/chillingo/libterms/ui/TermsActivityObservable;

    invoke-direct {v0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;-><init>()V

    sput-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->b:Lcom/chillingo/libterms/ui/TermsActivityObservable;

    .line 27
    :cond_0
    sget-object v0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->b:Lcom/chillingo/libterms/ui/TermsActivityObservable;

    return-object v0
.end method


# virtual methods
.method public getAgeOnAcceptance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public notifyEvent(Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;)V
    .locals 0
    .param p1, "event"    # Lcom/chillingo/libterms/ui/TermsActivityObservable$Events;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->setChanged()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public removeAllObservers()V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/chillingo/libterms/ui/TermsActivityObservable;->deleteObservers()V

    .line 51
    return-void
.end method

.method public setAgeOnAcceptance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ageOnAcceptance"    # Ljava/lang/Integer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/chillingo/libterms/ui/TermsActivityObservable;->a:Ljava/lang/Integer;

    .line 37
    return-void
.end method
