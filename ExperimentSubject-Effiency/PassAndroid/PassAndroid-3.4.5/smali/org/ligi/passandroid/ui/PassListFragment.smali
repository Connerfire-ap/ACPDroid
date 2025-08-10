.class public final Lorg/ligi/passandroid/ui/PassListFragment;
.super Landroid/support/v4/app/Fragment;
.source "PassListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/PassListFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0007J\u0010\u0010 \u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\"H\u0007J\u0018\u0010#\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006("
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassListFragment;",
        "Landroid/support/v4/app/Fragment;",
        "()V",
        "adapter",
        "Lorg/ligi/passandroid/ui/PassAdapter;",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "passStoreProjection",
        "Lorg/ligi/passandroid/model/PassStoreProjection;",
        "settings",
        "Lorg/ligi/passandroid/model/Settings;",
        "getSettings",
        "()Lorg/ligi/passandroid/model/Settings;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "",
        "onPassStoreChangeEvent",
        "passStoreChangeEvent",
        "Lorg/ligi/passandroid/events/PassStoreChangeEvent;",
        "onScanFinishedEvent",
        "scanFinishedEvent",
        "Lorg/ligi/passandroid/events/ScanFinishedEvent;",
        "onSwiped",
        "pos",
        "",
        "swipeDir",
        "Companion",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
# The value of this static final field might be set in the static constructor
.field private static final BUNDLE_KEY_TOPIC:Ljava/lang/String; = "topic"

.field public static final Companion:Lorg/ligi/passandroid/ui/PassListFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private adapter:Lorg/ligi/passandroid/ui/PassAdapter;

.field private final bus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

.field private final settings:Lorg/ligi/passandroid/model/Settings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Lorg/ligi/passandroid/ui/PassListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ligi/passandroid/ui/PassListFragment;->Companion:Lorg/ligi/passandroid/ui/PassListFragment$Companion;

    .line 97
    const-string v0, "topic"

    sput-object v0, Lorg/ligi/passandroid/ui/PassListFragment;->BUNDLE_KEY_TOPIC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 34
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 109
    new-instance v1, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 108
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 35
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 112
    new-instance v1, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 111
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/Settings;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassListFragment;->settings:Lorg/ligi/passandroid/model/Settings;

    .line 36
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 113
    const/4 v0, 0x0

    .line 114
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 115
    new-instance v1, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$3;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassListFragment$$special$$inlined$instance$3;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 114
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/EventBus;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassListFragment;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-void
.end method

.method public static final synthetic access$getBUNDLE_KEY_TOPIC$cp()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lorg/ligi/passandroid/ui/PassListFragment;->BUNDLE_KEY_TOPIC:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassListFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getSettings()Lorg/ligi/passandroid/model/Settings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->settings:Lorg/ligi/passandroid/model/Settings;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const-string v3, "inflater"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const v3, 0x7f030050

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "inflate":Landroid/view/View;
    new-instance v3, Lorg/ligi/passandroid/model/PassStoreProjection;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lorg/ligi/passandroid/ui/PassListFragment;->Companion:Lorg/ligi/passandroid/ui/PassListFragment$Companion;

    # invokes: Lorg/ligi/passandroid/ui/PassListFragment$Companion;->getBUNDLE_KEY_TOPIC()Ljava/lang/String;
    invoke-static {v6}, Lorg/ligi/passandroid/ui/PassListFragment$Companion;->access$getBUNDLE_KEY_TOPIC$p(Lorg/ligi/passandroid/ui/PassListFragment$Companion;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v6, p0, Lorg/ligi/passandroid/ui/PassListFragment;->settings:Lorg/ligi/passandroid/model/Settings;

    invoke-interface {v6}, Lorg/ligi/passandroid/model/Settings;->getSortOrder()Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/ligi/passandroid/model/PassStoreProjection;-><init>(Lorg/ligi/passandroid/model/PassStore;Ljava/lang/String;Lorg/ligi/passandroid/model/comparator/PassSortOrder;)V

    iput-object v3, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    .line 42
    new-instance v4, Lorg/ligi/passandroid/ui/PassAdapter;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type android.support.v7.app.AppCompatActivity"

    invoke-direct {v3, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    check-cast v3, Landroid/support/v7/app/AppCompatActivity;

    iget-object v5, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    if-nez v5, :cond_2

    const-string v6, "passStoreProjection"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v4, v3, v5}, Lorg/ligi/passandroid/ui/PassAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;Lorg/ligi/passandroid/model/PassStoreProjection;)V

    iput-object v4, p0, Lorg/ligi/passandroid/ui/PassListFragment;->adapter:Lorg/ligi/passandroid/ui/PassAdapter;

    .line 44
    const-string v3, "inflate"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/ligi/passandroid/R$id;->pass_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "inflate.pass_recyclerview"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassListFragment;->adapter:Lorg/ligi/passandroid/ui/PassAdapter;

    if-nez v4, :cond_3

    const-string v5, "adapter"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    check-cast v4, Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 46
    sget v3, Lorg/ligi/passandroid/R$id;->pass_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    const-string v4, "inflate.pass_recyclerview"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v4, v5

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 48
    new-instance v2, Lorg/ligi/passandroid/ui/PassListFragment$onCreateView$simpleItemTouchCallback$1;

    const/16 v3, 0xc

    invoke-direct {v2, p0, v7, v3}, Lorg/ligi/passandroid/ui/PassListFragment$onCreateView$simpleItemTouchCallback$1;-><init>(Lorg/ligi/passandroid/ui/PassListFragment;II)V

    .line 58
    .local v2, "simpleItemTouchCallback":Lorg/ligi/passandroid/ui/PassListFragment$onCreateView$simpleItemTouchCallback$1;
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .end local v2    # "simpleItemTouchCallback":Lorg/ligi/passandroid/ui/PassListFragment$onCreateView$simpleItemTouchCallback$1;
    invoke-direct {v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 59
    .local v1, "itemTouchHelper":Landroid/support/v7/widget/helper/ItemTouchHelper;
    sget v3, Lorg/ligi/passandroid/R$id;->pass_recyclerview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    iget-object v3, p0, Lorg/ligi/passandroid/ui/PassListFragment;->bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v3, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 62
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPassStoreChangeEvent(Lorg/ligi/passandroid/events/PassStoreChangeEvent;)V
    .locals 2
    .param p1, "passStoreChangeEvent"    # Lorg/ligi/passandroid/events/PassStoreChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const-string v0, "passStoreChangeEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    if-nez v0, :cond_0

    const-string v1, "passStoreProjection"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/PassStoreProjection;->refresh()V

    .line 85
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->adapter:Lorg/ligi/passandroid/ui/PassAdapter;

    if-nez v0, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassAdapter;->notifyDataSetChanged()V

    .line 86
    return-void
.end method

.method public final onScanFinishedEvent(Lorg/ligi/passandroid/events/ScanFinishedEvent;)V
    .locals 2
    .param p1, "scanFinishedEvent"    # Lorg/ligi/passandroid/events/ScanFinishedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const-string v0, "scanFinishedEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    if-nez v0, :cond_0

    const-string v1, "passStoreProjection"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lorg/ligi/passandroid/model/PassStoreProjection;->refresh()V

    .line 91
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassListFragment;->adapter:Lorg/ligi/passandroid/ui/PassAdapter;

    if-nez v0, :cond_1

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method

.method public final onSwiped(II)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "swipeDir"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 67
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStoreProjection:Lorg/ligi/passandroid/model/PassStoreProjection;

    if-nez v2, :cond_0

    const-string v3, "passStoreProjection"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PassStoreProjection;->getPassList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/pass/Pass;

    .line 68
    .local v1, "pass":Lorg/ligi/passandroid/model/pass/Pass;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v3

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v3, v1, v2}, Lorg/ligi/passandroid/model/PassClassifier;->getTopicWithOffset(Lorg/ligi/passandroid/model/pass/Pass;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "nextTopic":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 71
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v3

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v4, "activity"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-static {v3, v1, v0, v2}, Lorg/ligi/passandroid/functions/MoveHelperKt;->moveWithUndoSnackbar(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;Landroid/app/Activity;)V

    .line 74
    :goto_1
    return-void

    .line 68
    .end local v0    # "nextTopic":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 73
    .restart local v0    # "nextTopic":Ljava/lang/String;
    :cond_2
    new-instance v3, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v4, "activity"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    iget-object v4, p0, Lorg/ligi/passandroid/ui/PassListFragment;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-direct {v3, v2, v4, v1}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;-><init>(Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/model/pass/Pass;)V

    invoke-virtual {v3}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->show()V

    goto :goto_1
.end method
