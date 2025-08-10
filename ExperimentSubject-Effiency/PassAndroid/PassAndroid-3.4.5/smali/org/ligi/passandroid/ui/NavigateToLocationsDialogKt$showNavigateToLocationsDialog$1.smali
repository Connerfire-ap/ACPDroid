.class final Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;
.super Ljava/lang/Object;
.source "NavigateToLocationsDialog.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->showNavigateToLocationsDialog(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/Pass;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "which",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $finishOnDone:Z

.field final synthetic $locations:Ljava/util/List;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;

.field final synthetic receiver$0:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/List;Lorg/ligi/passandroid/model/pass/Pass;Z)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->receiver$0:Landroid/app/Activity;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$locations:Ljava/util/List;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-boolean p4, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$finishOnDone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 32
    iget-object v1, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->receiver$0:Landroid/app/Activity;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$locations:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/pass/PassLocation;

    iget-object v2, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    # invokes: Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V
    invoke-static {v1, v0, v2}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->access$startIntentForLocation(Landroid/app/Activity;Lorg/ligi/passandroid/model/pass/PassLocation;Lorg/ligi/passandroid/model/pass/Pass;)V

    .line 33
    iget-object v0, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->receiver$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt$showNavigateToLocationsDialog$1;->$finishOnDone:Z

    # invokes: Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->done(Landroid/app/Activity;Z)V
    invoke-static {v0, v1}, Lorg/ligi/passandroid/ui/NavigateToLocationsDialogKt;->access$done(Landroid/app/Activity;Z)V

    .line 34
    return-void
.end method
