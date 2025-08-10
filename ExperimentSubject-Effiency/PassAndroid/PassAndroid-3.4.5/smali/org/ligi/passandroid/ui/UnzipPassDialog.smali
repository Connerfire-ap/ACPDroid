.class public final Lorg/ligi/passandroid/ui/UnzipPassDialog;
.super Ljava/lang/Object;
.source "UnzipPassDialog.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002JA\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00122!\u0010\u0013\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0004\u0012\u00020\u00040\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lorg/ligi/passandroid/ui/UnzipPassDialog;",
        "",
        "()V",
        "displayError",
        "",
        "activity",
        "Landroid/app/Activity;",
        "title",
        "",
        "err",
        "prepareResult",
        "",
        "dialog",
        "Landroid/app/ProgressDialog;",
        "show",
        "ins",
        "Lorg/ligi/passandroid/model/InputStreamWithSource;",
        "passStore",
        "Lorg/ligi/passandroid/model/PassStore;",
        "callAfterFinishOnUIThread",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "path",
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
.field public static final INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassDialog;

    invoke-direct {v0}, Lorg/ligi/passandroid/ui/UnzipPassDialog;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/ui/UnzipPassDialog;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassDialog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$displayError(Lorg/ligi/passandroid/ui/UnzipPassDialog;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/UnzipPassDialog;
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "title"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "err"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->displayError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$prepareResult(Lorg/ligi/passandroid/ui/UnzipPassDialog;Landroid/app/Activity;Landroid/app/ProgressDialog;)Z
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/UnzipPassDialog;
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "dialog"    # Landroid/app/ProgressDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lorg/ligi/passandroid/ui/UnzipPassDialog;->prepareResult(Landroid/app/Activity;Landroid/app/ProgressDialog;)Z

    move-result v0

    return v0
.end method

.method private final displayError(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "err"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "title":Ljava/lang/String;
    invoke-virtual {v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 17
    check-cast p3, Ljava/lang/CharSequence;

    .end local p3    # "err":Ljava/lang/String;
    invoke-virtual {v0, p3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 18
    const v2, 0x104000a

    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassDialog$displayError$1;

    invoke-direct {v0, p1}, Lorg/ligi/passandroid/ui/UnzipPassDialog$displayError$1;-><init>(Landroid/app/Activity;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 20
    return-void
.end method

.method private final prepareResult(Landroid/app/Activity;Landroid/app/ProgressDialog;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    nop

    .line 78
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final show(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1, "ins"    # Lorg/ligi/passandroid/model/InputStreamWithSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "activity"    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3, "passStore"    # Lorg/ligi/passandroid/model/PassStore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4, "callAfterFinishOnUIThread"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ligi/passandroid/model/InputStreamWithSource;",
            "Landroid/app/Activity;",
            "Lorg/ligi/passandroid/model/PassStore;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v1, "ins"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "activity"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "passStore"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callAfterFinishOnUIThread"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    :cond_0
    move-object v1, p2

    .line 31
    check-cast v1, Landroid/content/Context;

    .line 32
    const v2, 0x7f0700ab

    invoke-virtual {p2, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 33
    const v3, 0x7f0700aa

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 34
    const/4 v5, 0x1

    .line 31
    invoke-static {v1, v2, v3, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 35
    .local v4, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v4, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 37
    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;-><init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Landroid/app/ProgressDialog;Lkotlin/jvm/functions/Function1;)V

    .line 67
    .local v0, "alertDialogUpdater":Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;
    new-instance v1, Ljava/lang/Thread;

    check-cast v0, Ljava/lang/Runnable;

    .end local v0    # "alertDialogUpdater":Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
