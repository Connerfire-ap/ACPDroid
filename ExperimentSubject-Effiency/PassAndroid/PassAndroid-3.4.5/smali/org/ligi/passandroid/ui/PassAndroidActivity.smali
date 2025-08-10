.class public Lorg/ligi/passandroid/ui/PassAndroidActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PassAndroidActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassAndroidActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "lastSetNightMode",
        "",
        "Ljava/lang/Integer;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "settings",
        "Lorg/ligi/passandroid/model/Settings;",
        "getSettings",
        "()Lorg/ligi/passandroid/model/Settings;",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "getTracker",
        "()Lorg/ligi/passandroid/Tracker;",
        "onResume",
        "",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastSetNightMode:Ljava/lang/Integer;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final settings:Lorg/ligi/passandroid/model/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tracker:Lorg/ligi/passandroid/Tracker;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 14
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 33
    new-instance v1, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 32
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 15
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 36
    new-instance v1, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 35
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/Settings;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->settings:Lorg/ligi/passandroid/model/Settings;

    .line 16
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 39
    new-instance v1, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$3;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$3;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 38
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/EventBus;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->bus:Lorg/greenrobot/eventbus/EventBus;

    .line 17
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 42
    new-instance v1, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$4;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassAndroidActivity$$special$$inlined$instance$4;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 41
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/Tracker;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->tracker:Lorg/ligi/passandroid/Tracker;

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getSettings()Lorg/ligi/passandroid/model/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->settings:Lorg/ligi/passandroid/model/Settings;

    return-object v0
.end method

.method public final getTracker()Lorg/ligi/passandroid/Tracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->tracker:Lorg/ligi/passandroid/Tracker;

    return-object v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 24
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->lastSetNightMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->lastSetNightMode:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->settings:Lorg/ligi/passandroid/model/Settings;

    invoke-interface {v1}, Lorg/ligi/passandroid/model/Settings;->getNightMode()I

    move-result v1

    if-nez v0, :cond_1

    .line 25
    :goto_0
    invoke-static {p0}, Lorg/ligi/kaxt/ActivityExtensionsKt;->recreateWhenPossible(Landroid/app/Activity;)V

    .line 27
    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->settings:Lorg/ligi/passandroid/model/Settings;

    invoke-interface {v0}, Lorg/ligi/passandroid/model/Settings;->getNightMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassAndroidActivity;->lastSetNightMode:Ljava/lang/Integer;

    .line 28
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method
