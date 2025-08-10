.class public final Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
.super Lcom/duckduckgo/app/global/DuckDuckGoActivity;
.source "PrivacyDashboardActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDashboardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDashboardActivity.kt\ncom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity\n*L\n1#1,128:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 (2\u00020\u0001:\u0001(B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0008\u0010\u0019\u001a\u00020\u0016H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u0016H\u0016J\u0012\u0010\u001f\u001a\u00020\u00162\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0010\u0010\"\u001a\u00020\u00182\u0006\u0010#\u001a\u00020$H\u0016J\u0010\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\'H\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006)"
    }
    d2 = {
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;",
        "Lcom/duckduckgo/app/global/DuckDuckGoActivity;",
        "()V",
        "repository",
        "Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
        "getRepository",
        "()Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;",
        "setRepository",
        "(Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V",
        "viewModel",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;",
        "getViewModel",
        "()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;",
        "viewModel$delegate",
        "Lkotlin/Lazy;",
        "viewModelFactory",
        "Lcom/duckduckgo/app/global/ViewModelFactory;",
        "getViewModelFactory",
        "()Lcom/duckduckgo/app/global/ViewModelFactory;",
        "setViewModelFactory",
        "(Lcom/duckduckgo/app/global/ViewModelFactory;)V",
        "configureToggle",
        "",
        "enabled",
        "",
        "configureToolbar",
        "getHtmlDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "resource",
        "",
        "onBackPressed",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onOptionsItemSelected",
        "item",
        "Landroid/view/MenuItem;",
        "render",
        "viewState",
        "Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;",
        "Companion",
        "duckduckgo-0.6.0_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static transient synthetic $jacocoData:[Z = null

.field public static final Companion:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;

# The value of this static final field might be set in the static constructor
.field private static final REQUEST_DASHBOARD:I = 0x3e8

# The value of this static final field might be set in the static constructor
.field private static final RESULT_RELOAD:I = 0x3e8


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public repository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final viewModel$delegate:Lkotlin/Lazy;

.field public viewModelFactory:Lcom/duckduckgo/app/global/ViewModelFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x69aee12de4080318L    # 1.1818405379685033E201

    const/16 v2, 0x41

    const-string v3, "com/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity"

    invoke-static {v0, v1, v3, v2}, Lorg/jacoco/agent/rt/internal_8ff85ea/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    new-instance v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->Companion:Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$Companion;

    .line 46
    const/16 v1, 0x3e8

    sput v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->REQUEST_DASHBOARD:I

    .line 47
    sput v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->RESULT_RELOAD:I

    const/16 v1, 0x33

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    const/16 v1, 0x30

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    invoke-direct {p0}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;-><init>()V

    const/16 v1, 0x31

    aput-boolean v2, v0, v1

    .line 72
    new-instance v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;

    invoke-direct {v1, p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$viewModel$2;-><init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->viewModel$delegate:Lkotlin/Lazy;

    const/16 v1, 0x32

    aput-boolean v2, v0, v1

    return-void
.end method

.method public static final synthetic access$getHtmlDrawable(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .param p1, "resource"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getHtmlDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$getREQUEST_DASHBOARD$cp()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    sget v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->REQUEST_DASHBOARD:I

    const/16 v2, 0x37

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final synthetic access$getRESULT_RELOAD$cp()I
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    sget v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->RESULT_RELOAD:I

    const/16 v2, 0x38

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method public static final synthetic access$getViewModel$p(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;
    .locals 4
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getViewModel()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    move-result-object v1

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method public static final synthetic access$render(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;)V
    .locals 3
    .param p0, "$this"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;
    .param p1, "viewState"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 39
    invoke-direct {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->render(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;)V

    const/16 v1, 0x34

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final configureToggle(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const v2, 0x7f05004d

    const/16 v3, 0x29

    aput-boolean v1, v0, v3

    goto :goto_0

    :cond_0
    const v2, 0x7f05006c

    const/16 v3, 0x2a

    aput-boolean v1, v0, v3

    :goto_0
    const/16 v3, 0x2b

    aput-boolean v1, v0, v3

    .line 118
    .local v2, "backgroundColor":I
    sget v3, Lcom/duckduckgo/app/browser/R$id;->privacyToggleContainer:I

    invoke-virtual {p0, v3}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/constraint/ConstraintLayout;->setBackgroundColor(I)V

    const/16 v3, 0x2c

    aput-boolean v1, v0, v3

    .line 119
    sget v3, Lcom/duckduckgo/app/browser/R$id;->privacyToggle:I

    invoke-virtual {p0, v3}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/SwitchCompat;

    const-string v4, "privacyToggle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 120
    const/16 v3, 0x2d

    aput-boolean v1, v0, v3

    return-void
.end method

.method private final configureToolbar()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 77
    sget v1, Lcom/duckduckgo/app/browser/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 78
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    .line 79
    :goto_0
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void
.end method

.method private final getHtmlDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "resource"    # I

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    invoke-virtual {p0, p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v2, 0x2e

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 124
    const-string v2, "drawable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    const/16 v2, 0x2f

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final getViewModel()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private final render(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;)V
    .locals 6
    .param p1, "viewState"    # Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->isFinishing()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 100
    const/16 v1, 0x1c

    aput-boolean v2, v0, v1

    return-void

    .line 102
    :cond_0
    sget v1, Lcom/duckduckgo/app/browser/R$id;->privacyBanner:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getPrivacyBanner()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x1d

    aput-boolean v2, v0, v1

    .line 103
    sget v1, Lcom/duckduckgo/app/browser/R$id;->domain:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "domain"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getDomain()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1e

    aput-boolean v2, v0, v1

    .line 104
    sget v1, Lcom/duckduckgo/app/browser/R$id;->heading:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "heading"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getHeading()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;

    invoke-direct {v4, p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$render$1;-><init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    check-cast v4, Landroid/text/Html$ImageGetter;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1f

    aput-boolean v2, v0, v1

    .line 105
    sget v1, Lcom/duckduckgo/app/browser/R$id;->httpsIcon:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getHttpsIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x20

    aput-boolean v2, v0, v1

    .line 106
    sget v1, Lcom/duckduckgo/app/browser/R$id;->networksIcon:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getNetworksIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x21

    aput-boolean v2, v0, v1

    .line 107
    sget v1, Lcom/duckduckgo/app/browser/R$id;->majorNetworksIcon:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getMajorNetworksIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x22

    aput-boolean v2, v0, v1

    .line 108
    sget v1, Lcom/duckduckgo/app/browser/R$id;->httpsText:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "httpsText"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getHttpsText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x23

    aput-boolean v2, v0, v1

    .line 109
    sget v1, Lcom/duckduckgo/app/browser/R$id;->networksText:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "networksText"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getNetworksText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x24

    aput-boolean v2, v0, v1

    .line 110
    sget v1, Lcom/duckduckgo/app/browser/R$id;->majorNetworksText:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "majorNetworksText"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getMajorNetworksText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x25

    aput-boolean v2, v0, v1

    .line 111
    sget v1, Lcom/duckduckgo/app/browser/R$id;->termsIcon:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getTermsIcon()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v1, 0x26

    aput-boolean v2, v0, v1

    .line 112
    sget v1, Lcom/duckduckgo/app/browser/R$id;->termsText:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "termsText"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getTermsText()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x27

    aput-boolean v2, v0, v1

    .line 113
    invoke-virtual {p1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel$ViewState;->getToggleEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->configureToggle(Z)V

    .line 114
    const/16 v1, 0x28

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x3e

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    :goto_0
    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x39

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findViewCache:Ljava/util/HashMap;

    const/16 v1, 0x3a

    aput-boolean v2, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 p1, 0x3b

    aput-boolean v2, v0, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3c

    aput-boolean v2, v0, p1

    :goto_1
    const/16 p1, 0x3d

    aput-boolean v2, v0, p1

    return-object v1
.end method

.method public final getRepository()Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->repository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "repository"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v2, v0, v3

    :goto_0
    const/4 v3, 0x6

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public final getViewModelFactory()Lcom/duckduckgo/app/global/ViewModelFactory;
    .locals 4

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->viewModelFactory:Lcom/duckduckgo/app/global/ViewModelFactory;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "viewModelFactory"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    aput-boolean v2, v0, v2

    :goto_0
    const/4 v3, 0x2

    aput-boolean v2, v0, v3

    return-object v1
.end method

.method public onBackPressed()V
    .locals 3

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 92
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getViewModel()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->getShouldReloadPage()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/16 v1, 0x18

    aput-boolean v2, v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    aput-boolean v2, v0, v1

    .line 93
    sget v1, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->RESULT_RELOAD:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->setResult(I)V

    const/16 v1, 0x1a

    aput-boolean v2, v0, v1

    .line 95
    :goto_0
    invoke-super {p0}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->onBackPressed()V

    .line 96
    const/16 v1, 0x1b

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 55
    invoke-super {p0, p1}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 56
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->setContentView(I)V

    const/16 v1, 0x9

    aput-boolean v2, v0, v1

    .line 57
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->configureToolbar()V

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    .line 59
    invoke-direct {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->getViewModel()Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardViewModel;->getViewState()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$1;

    invoke-direct {v4, p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$1;-><init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    check-cast v4, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v1, v3, v4}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    .line 63
    iget-object v1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->repository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    if-eqz v1, :cond_0

    const/16 v3, 0xc

    aput-boolean v2, v0, v3

    goto :goto_0

    :cond_0
    const-string v3, "repository"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v3, 0xd

    aput-boolean v2, v0, v3

    :goto_0
    invoke-virtual {v1}, Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;->getPrivacyMonitor()Landroid/arch/lifecycle/MutableLiveData;

    move-result-object v1

    move-object v3, p0

    check-cast v3, Landroid/arch/lifecycle/LifecycleOwner;

    new-instance v4, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;

    invoke-direct {v4, p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$2;-><init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    check-cast v4, Landroid/arch/lifecycle/Observer;

    invoke-virtual {v1, v3, v4}, Landroid/arch/lifecycle/MutableLiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 67
    sget v1, Lcom/duckduckgo/app/browser/R$id;->privacyToggle:I

    invoke-virtual {p0, v1}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$3;

    invoke-direct {v3, p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity$onCreate$3;-><init>(Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;)V

    check-cast v3, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "item"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 87
    nop

    .line 88
    invoke-super {p0, p1}, Lcom/duckduckgo/app/global/DuckDuckGoActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    const/16 v3, 0x17

    aput-boolean v2, v0, v3

    return v1

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->onBackPressed()V

    .line 85
    const/16 v1, 0x16

    aput-boolean v2, v0, v1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public final setRepository(Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;)V
    .locals 3
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->repository:Lcom/duckduckgo/app/privacymonitor/store/PrivacyMonitorRepository;

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final setViewModelFactory(Lcom/duckduckgo/app/global/ViewModelFactory;)V
    .locals 3
    .param p1, "<set-?>"    # Lcom/duckduckgo/app/global/ViewModelFactory;

    invoke-static {}, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->$jacocoInit()[Z

    move-result-object v0

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/duckduckgo/app/privacymonitor/ui/PrivacyDashboardActivity;->viewModelFactory:Lcom/duckduckgo/app/global/ViewModelFactory;

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
