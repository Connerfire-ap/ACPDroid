.class final Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;
.super Ljava/lang/Object;
.source "PassMenuOptions.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/PassMenuOptions;->process(Landroid/view/MenuItem;)Z
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
        "<anonymous parameter 1>",
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
.field final synthetic $source:Ljava/lang/String;

.field final synthetic $sourceDeleteCheckBoxView:Landroid/view/View;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/PassMenuOptions;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->$sourceDeleteCheckBoxView:Landroid/view/View;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->$source:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->$sourceDeleteCheckBoxView:Landroid/view/View;

    const-string v1, "sourceDeleteCheckBoxView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lorg/ligi/passandroid/R$id;->sourceDeleteCheckbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "sourceDeleteCheckBoxView.sourceDeleteCheckbox"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->$source:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "file://"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassMenuOptions;->getPassStore()Lorg/ligi/passandroid/model/PassStore;

    move-result-object v0

    iget-object v1, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    invoke-virtual {v1}, Lorg/ligi/passandroid/ui/PassMenuOptions;->getPass()Lorg/ligi/passandroid/model/pass/Pass;

    move-result-object v1

    invoke-interface {v1}, Lorg/ligi/passandroid/model/pass/Pass;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/ligi/passandroid/model/PassStore;->deletePassWithId(Ljava/lang/String;)Z

    .line 54
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassMenuOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/ligi/passandroid/ui/PassViewActivityBase;

    if-eqz v0, :cond_2

    .line 55
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassMenuOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lorg/ligi/passandroid/ui/PassListActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .local v6, "passListIntent":Landroid/content/Intent;
    iget-object v0, p0, Lorg/ligi/passandroid/ui/PassMenuOptions$process$1;->this$0:Lorg/ligi/passandroid/ui/PassMenuOptions;

    invoke-virtual {v0}, Lorg/ligi/passandroid/ui/PassMenuOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 58
    .end local v6    # "passListIntent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
