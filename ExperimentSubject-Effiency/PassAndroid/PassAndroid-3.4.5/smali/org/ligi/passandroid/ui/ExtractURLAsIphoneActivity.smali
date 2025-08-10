.class public final Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;
.super Lorg/ligi/passandroid/ui/PassAndroidActivity;
.source "ExtractURLAsIphoneActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0014J\u0006\u0010\r\u001a\u00020\nR\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;",
        "Lorg/ligi/passandroid/ui/PassAndroidActivity;",
        "()V",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "getProgressDialog",
        "()Landroid/app/ProgressDialog;",
        "progressDialog$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "tearDown",
        "DownloadExtractAndStartImportTask",
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

.field private final progressDialog$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v3, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progressDialog"

    const-string v5, "getProgressDialog()Landroid/app/ProgressDialog;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassAndroidActivity;-><init>()V

    .line 20
    new-instance v0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$progressDialog$2;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$progressDialog$2;-><init>(Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->progressDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 23
    invoke-super {p0, p1}, Lorg/ligi/passandroid/ui/PassAndroidActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 26
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getTracker()Lorg/ligi/passandroid/Tracker;

    move-result-object v0

    const-string v1, "quirk_fix"

    const-string v2, "unpack_attempt"

    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "intent"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "intent.data"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/ligi/passandroid/Tracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    new-instance v0, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;-><init>(Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity$DownloadExtractAndStartImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 29
    return-void
.end method

.method public final tearDown()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0}, Lorg/ligi/kaxt/DialogExtensionsKt;->dismissIfShowing(Landroid/app/Dialog;)V

    .line 94
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/ExtractURLAsIphoneActivity;->finish()V

    .line 95
    return-void
.end method
