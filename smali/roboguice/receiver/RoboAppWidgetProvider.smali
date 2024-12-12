.class public abstract Lroboguice/receiver/RoboAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "RoboAppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 25
    return-void
.end method

.method public final onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    invoke-static {v1}, Lroboguice/RoboGuice;->getOrCreateBaseApplicationInjector(Landroid/app/Application;)Lcom/google/inject/Injector;

    move-result-object v0

    .line 18
    .local v0, "injector":Lcom/google/inject/Injector;
    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lroboguice/receiver/RoboAppWidgetProvider;->onHandleUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 20
    return-void
.end method
