.class public final Lorg/ligi/passandroid/ui/PassNavigationView;
.super Landroid/support/design/widget/NavigationView;
.source "PassNavigationView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u000cJ\u0008\u0010\u001c\u001a\u00020\u001dH\u0014J\u0008\u0010\u001e\u001a\u00020\u001dH\u0014J\u0012\u0010\u001f\u001a\u00020\u001d2\u0008\u0008\u0001\u0010 \u001a\u00020!H\u0007R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR#\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\""
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassNavigationView;",
        "Landroid/support/design/widget/NavigationView;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "bus",
        "Lorg/greenrobot/eventbus/EventBus;",
        "getBus",
        "()Lorg/greenrobot/eventbus/EventBus;",
        "marketUrl",
        "",
        "kotlin.jvm.PlatformType",
        "getMarketUrl",
        "()Ljava/lang/String;",
        "marketUrl$delegate",
        "Lkotlin/Lazy;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "getIntent",
        "Landroid/content/Intent;",
        "id",
        "",
        "intentFromUrl",
        "url",
        "onAttachedToWindow",
        "",
        "onDetachedFromWindow",
        "onPassStoreChangeEvent",
        "passStoreChangeEvent",
        "Lorg/ligi/passandroid/events/PassStoreChangeEvent;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final bus:Lorg/greenrobot/eventbus/EventBus;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final marketUrl$delegate:Lkotlin/Lazy;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/ui/PassNavigationView;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "marketUrl"

    const-string v5, "getMarketUrl()Ljava/lang/String;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/ui/PassNavigationView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "attrs"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 74
    new-instance v1, Lorg/ligi/passandroid/ui/PassNavigationView$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassNavigationView$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 73
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 21
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 77
    new-instance v1, Lorg/ligi/passandroid/ui/PassNavigationView$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassNavigationView$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 76
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/EventBus;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->bus:Lorg/greenrobot/eventbus/EventBus;

    .line 58
    new-instance v1, Lorg/ligi/passandroid/ui/PassNavigationView$marketUrl$2;

    invoke-direct {v1, p1}, Lorg/ligi/passandroid/ui/PassNavigationView$marketUrl$2;-><init>(Landroid/content/Context;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->marketUrl$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMarketUrl()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->marketUrl$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/PassNavigationView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->_$_findViewCache:Ljava/util/HashMap;

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
    .line 21
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->bus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public final getIntent(I)Landroid/content/Intent;
    .locals 3
    .param p1, "id"    # I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 23
    packed-switch p1, :pswitch_data_0

    .line 33
    :pswitch_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0

    .line 24
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassNavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/ligi/passandroid/ui/PreferenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 25
    :pswitch_2
    const-string v1, "https://plus.google.com/communities/116353894782342292067"

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassNavigationView;->intentFromUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 26
    :pswitch_3
    const-string v1, "https://github.com/ligi/PassAndroid"

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassNavigationView;->intentFromUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 27
    :pswitch_4
    const-string v1, "https://play.google.com/apps/testing/org.ligi.passandroid"

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassNavigationView;->intentFromUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_5
    const-string v1, "https://transifex.com/projects/p/passandroid"

    invoke-virtual {p0, v1}, Lorg/ligi/passandroid/ui/PassNavigationView;->intentFromUrl(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 29
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "$receiver":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassNavigationView;->getMarketUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    nop

    .line 29
    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x7f0e00ef
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final intentFromUrl(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "$receiver":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/support/design/widget/NavigationView;->onAttachedToWindow()V

    .line 41
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassNavigationView$onAttachedToWindow$1;-><init>(Lorg/ligi/passandroid/ui/PassNavigationView;)V

    check-cast v0, Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassNavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 50
    sget-object v0, Lorg/ligi/passandroid/events/PassStoreChangeEvent;->INSTANCE:Lorg/ligi/passandroid/events/PassStoreChangeEvent;

    invoke-virtual {p0, v0}, Lorg/ligi/passandroid/ui/PassNavigationView;->onPassStoreChangeEvent(Lorg/ligi/passandroid/events/PassStoreChangeEvent;)V

    .line 51
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/design/widget/NavigationView;->onDetachedFromWindow()V

    .line 55
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->bus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public final onPassStoreChangeEvent(Lorg/ligi/passandroid/events/PassStoreChangeEvent;)V
    .locals 9
    .param p1, "passStoreChangeEvent"    # Lorg/ligi/passandroid/events/PassStoreChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v2, "passStoreChangeEvent"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getPassMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    .line 64
    .local v0, "passCount":I
    invoke-virtual {p0, v7}, Lorg/ligi/passandroid/ui/PassNavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getHeaderView(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/ligi/passandroid/R$id;->pass_count_header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "getHeaderView(0).pass_count_header"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07008b

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lorg/ligi/passandroid/ui/PassNavigationView;->passStore:Lorg/ligi/passandroid/model/PassStore;

    invoke-interface {v2}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ligi/passandroid/model/PassClassifier;->getTopics()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    .line 67
    .local v1, "topicCount":I
    invoke-virtual {p0, v7}, Lorg/ligi/passandroid/ui/PassNavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "getHeaderView(0)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/ligi/passandroid/R$id;->topic_count_header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "getHeaderView(0).topic_count_header"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassNavigationView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f07002a

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method
