.class public final Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;
.super Ljava/lang/Object;
.source "UnzipPassDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/UnzipPassDialog;->show(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertDialogUpdater"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B(\u0012!\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0003\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0008H\u0016R)\u0010\u0002\u001a\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0004\u0012\u00020\u00080\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "org/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater",
        "Ljava/lang/Runnable;",
        "call_after_finish",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "path",
        "",
        "(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Landroid/app/ProgressDialog;Lkotlin/jvm/functions/Function1;)V",
        "run",
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $dialog:Landroid/app/ProgressDialog;

.field final synthetic $ins:Lorg/ligi/passandroid/model/InputStreamWithSource;

.field final synthetic $passStore:Lorg/ligi/passandroid/model/PassStore;

.field private final call_after_finish:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1",
            "<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/app/Activity;Lorg/ligi/passandroid/model/PassStore;Landroid/app/ProgressDialog;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$captured_local_variable$0"    # Lorg/ligi/passandroid/model/InputStreamWithSource;
    .param p2, "$captured_local_variable$1"    # Landroid/app/Activity;
    .param p3, "$captured_local_variable$2"    # Lorg/ligi/passandroid/model/PassStore;
    .param p4, "$captured_local_variable$3"    # Landroid/app/ProgressDialog;
    .param p5, "call_after_finish"    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ligi/passandroid/model/InputStreamWithSource;",
            "Landroid/app/Activity;",
            "Lorg/ligi/passandroid/model/PassStore;",
            "Landroid/app/ProgressDialog;",
            "Lkotlin/jvm/functions/Function1",
            "<-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-string v0, "call_after_finish"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$ins:Lorg/ligi/passandroid/model/InputStreamWithSource;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$passStore:Lorg/ligi/passandroid/model/PassStore;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->call_after_finish:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$getCall_after_finish$p(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->call_after_finish:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$ins:Lorg/ligi/passandroid/model/InputStreamWithSource;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    iget-object v3, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$passStore:Lorg/ligi/passandroid/model/PassStore;

    new-instance v4, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;

    invoke-direct {v4, p0}, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;-><init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)V

    check-cast v4, Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;

    .line 51
    new-instance v5, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;

    invoke-direct {v5, p0}, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$2;-><init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)V

    check-cast v5, Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;

    .line 40
    invoke-direct/range {v0 .. v5}, Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;-><init>(Lorg/ligi/passandroid/model/InputStreamWithSource;Landroid/content/Context;Lorg/ligi/passandroid/model/PassStore;Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;Lorg/ligi/passandroid/ui/UnzipPassController$FailCallback;)V

    .line 62
    .local v0, "spec":Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;
    sget-object v1, Lorg/ligi/passandroid/ui/UnzipPassController;->INSTANCE:Lorg/ligi/passandroid/ui/UnzipPassController;

    invoke-virtual {v1, v0}, Lorg/ligi/passandroid/ui/UnzipPassController;->processInputStream(Lorg/ligi/passandroid/ui/UnzipPassController$InputStreamUnzipControllerSpec;)V

    .line 63
    return-void
.end method
