.class public final Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;
.super Ljava/lang/Object;
.source "UnzipPassDialog.kt"

# interfaces
.implements Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "org/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1",
        "Lorg/ligi/passandroid/ui/UnzipPassController$SuccessCallback;",
        "(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)V",
        "call",
        "",
        "uuid",
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
.field final synthetic this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;)V
    .locals 0
    .param p1, "$outer"    # Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "uuid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;->this$0:Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;

    iget-object v1, v0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater;->$activity:Landroid/app/Activity;

    new-instance v0, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;

    invoke-direct {v0, p0, p1}, Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1$call$1;-><init>(Lorg/ligi/passandroid/ui/UnzipPassDialog$show$AlertDialogUpdater$run$spec$1;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
