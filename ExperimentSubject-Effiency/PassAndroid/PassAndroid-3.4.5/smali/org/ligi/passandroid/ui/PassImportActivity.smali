.class public final Lorg/ligi/passandroid/ui/PassImportActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PassImportActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0014J-\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00a2\u0006\u0002\u0010 J\u0008\u0010!\u001a\u00020\u0012H\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/PassImportActivity;",
        "Landroid/support/v7/app/AppCompatActivity;",
        "()V",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "getPassStore",
        "()Lorg/ligi/passandroid/model/PassStore;",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "getProgressDialog",
        "()Landroid/app/ProgressDialog;",
        "progressDialog$delegate",
        "Lkotlin/Lazy;",
        "tracker",
        "Lorg/ligi/passandroid/Tracker;",
        "getTracker",
        "()Lorg/ligi/passandroid/Tracker;",
        "doImport",
        "",
        "withPermission",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onRequestPermissionsResult",
        "requestCode",
        "",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "showDeniedDialog",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation

.annotation build Lpermissions/dispatcher/RuntimePermissions;
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final passStore:Lorg/ligi/passandroid/model/PassStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field private final tracker:Lorg/ligi/passandroid/Tracker;
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

    const-class v3, Lorg/ligi/passandroid/ui/PassImportActivity;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "progressDialog"

    const-string v5, "getProgressDialog()Landroid/app/ProgressDialog;"

    invoke-direct {v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    aput-object v0, v1, v2

    sput-object v1, Lorg/ligi/passandroid/ui/PassImportActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 25
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "tag$iv":Ljava/lang/Object;
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 115
    new-instance v1, Lorg/ligi/passandroid/ui/PassImportActivity$$special$$inlined$instance$1;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassImportActivity$$special$$inlined$instance$1;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 114
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/Tracker;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->tracker:Lorg/ligi/passandroid/Tracker;

    .line 26
    sget-object v1, Lorg/ligi/passandroid/App;->Companion:Lorg/ligi/passandroid/App$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/App$Companion;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v1

    check-cast v1, Lcom/github/salomonbrys/kodein/KodeinAwareBase;

    .line 116
    const/4 v0, 0x0

    .line 117
    invoke-interface {v1}, Lcom/github/salomonbrys/kodein/KodeinAwareBase;->getKodein()Lcom/github/salomonbrys/kodein/Kodein;

    move-result-object v2

    .line 118
    new-instance v1, Lorg/ligi/passandroid/ui/PassImportActivity$$special$$inlined$instance$2;

    invoke-direct {v1}, Lorg/ligi/passandroid/ui/PassImportActivity$$special$$inlined$instance$2;-><init>()V

    check-cast v1, Lcom/github/salomonbrys/kodein/TypeToken;

    .line 117
    invoke-interface {v2, v1, v0}, Lcom/github/salomonbrys/kodein/Kodein;->Instance(Lcom/github/salomonbrys/kodein/TypeToken;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ligi/passandroid/model/PassStore;

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->passStore:Lorg/ligi/passandroid/model/PassStore;

    .line 29
    new-instance v1, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;

    invoke-direct {v1, p0}, Lorg/ligi/passandroid/ui/PassImportActivity$progressDialog$2;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->progressDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getProgressDialog$p(Lorg/ligi/passandroid/ui/PassImportActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/PassImportActivity;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private final getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->progressDialog$delegate:Lkotlin/Lazy;

    sget-object v1, Lorg/ligi/passandroid/ui/PassImportActivity;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final doImport(Z)V
    .locals 2
    .param p1, "withPermission"    # Z
    .annotation build Lpermissions/dispatcher/NeedsPermission;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/lang/Thread;

    new-instance v0, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;

    invoke-direct {v0, p0, p1}, Lorg/ligi/passandroid/ui/PassImportActivity$doImport$1;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity;Z)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 102
    return-void
.end method

.method public final getPassStore()Lorg/ligi/passandroid/model/PassStore;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->passStore:Lorg/ligi/passandroid/model/PassStore;

    return-object v0
.end method

.method public final getTracker()Lorg/ligi/passandroid/Tracker;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->tracker:Lorg/ligi/passandroid/Tracker;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassImportActivity;->tracker:Lorg/ligi/passandroid/Tracker;

    const-string v1, "invalid_import_uri"

    invoke-interface {v0, v1, v2}, Lorg/ligi/passandroid/Tracker;->trackException(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->finish()V

    .line 49
    :goto_1
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_1
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 47
    invoke-virtual {p0, v2}, Lorg/ligi/passandroid/ui/PassImportActivity;->doImport(Z)V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 53
    invoke-static {p0, p1, p3}, Lorg/ligi/passandroid/ui/PassImportActivityPermissionsDispatcher;->onRequestPermissionsResult(Lorg/ligi/passandroid/ui/PassImportActivity;I[I)V

    .line 54
    return-void
.end method

.method public final showDeniedDialog()V
    .locals 3
    .annotation build Lpermissions/dispatcher/OnPermissionDenied;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/ligi/passandroid/ui/PassImportActivity;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v0}, Lorg/ligi/kaxt/DialogExtensionsKt;->dismissIfShowing(Landroid/app/Dialog;)V

    .line 108
    const v1, 0x7f0700bf

    const v0, 0x7f0700c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v0, Lorg/ligi/passandroid/ui/PassImportActivity$showDeniedDialog$1;

    invoke-direct {v0, p0}, Lorg/ligi/passandroid/ui/PassImportActivity$showDeniedDialog$1;-><init>(Lorg/ligi/passandroid/ui/PassImportActivity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, v1, v2, v0}, Lorg/ligi/kaxtui/ContextExtensionsKt;->alert(Landroid/content/Context;ILjava/lang/Integer;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    return-void
.end method
