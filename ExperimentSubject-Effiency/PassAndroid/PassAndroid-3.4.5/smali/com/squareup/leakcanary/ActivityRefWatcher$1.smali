.class Lcom/squareup/leakcanary/ActivityRefWatcher$1;
.super Ljava/lang/Object;
.source "ActivityRefWatcher.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/ActivityRefWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/ActivityRefWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/leakcanary/ActivityRefWatcher;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/squareup/leakcanary/ActivityRefWatcher$1;->this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/leakcanary/ActivityRefWatcher$1;->this$0:Lcom/squareup/leakcanary/ActivityRefWatcher;

    invoke-virtual {v0, p1}, Lcom/squareup/leakcanary/ActivityRefWatcher;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 58
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    return-void
.end method
