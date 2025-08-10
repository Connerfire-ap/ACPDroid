.class final Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MoveToNewTopicUI.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1",
        "<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "topic",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $dialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Landroid/support/v7/app/AlertDialog;)V
    .locals 1

    iput-object p1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->$dialog:Landroid/support/v7/app/AlertDialog;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->invoke(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1, "topic"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v0, "topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    # getter for: Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->passStore:Lorg/ligi/passandroid/model/PassStore;
    invoke-static {v0}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->access$getPassStore$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Lorg/ligi/passandroid/model/PassStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/ligi/passandroid/model/PassStore;->getClassifier()Lorg/ligi/passandroid/model/PassClassifier;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    # getter for: Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->pass:Lorg/ligi/passandroid/model/pass/Pass;
    invoke-static {v1}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->access$getPass$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    iget-object v2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    # getter for: Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->context:Landroid/app/Activity;
    invoke-static {v2}, Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->access$getContext$p(Lorg/ligi/passandroid/ui/MoveToNewTopicUI;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/ligi/passandroid/functions/MoveHelperKt;->moveWithUndoSnackbar(Lorg/ligi/passandroid/model/PassClassifier;Lorg/ligi/passandroid/model/pass/Pass;Ljava/lang/String;Landroid/app/Activity;)V

    .line 26
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$move$1;->$dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 27
    return-void
.end method
