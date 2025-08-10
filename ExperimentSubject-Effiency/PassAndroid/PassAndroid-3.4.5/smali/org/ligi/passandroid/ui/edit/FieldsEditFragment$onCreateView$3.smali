.class final Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "FieldsEditFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $inflate:Landroid/view/View;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->$inflate:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "it"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lorg/ligi/passandroid/model/pass/PassField;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    # getter for: Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->isEditingHiddenFields:Z
    invoke-static {v1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->access$isEditingHiddenFields$p(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;)Z

    move-result v1

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/ligi/passandroid/model/pass/PassField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    .local v0, "passField":Lorg/ligi/passandroid/model/pass/PassField;
    iget-object v2, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->$inflate:Landroid/view/View;

    const-string v3, "inflate"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/ligi/passandroid/R$id;->fields_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const-string v3, "inflate.fields_container"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    # invokes: Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->addField(Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V
    invoke-static {v2, v0, v1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->access$addField(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;Lorg/ligi/passandroid/model/pass/PassField;Landroid/view/ViewGroup;)V

    .line 43
    iget-object v1, p0, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment$onCreateView$3;->this$0:Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;

    # invokes: Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->getPass()Lorg/ligi/passandroid/model/pass/PassImpl;
    invoke-static {v1}, Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;->access$getPass(Lorg/ligi/passandroid/ui/edit/FieldsEditFragment;)Lorg/ligi/passandroid/model/pass/PassImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/pass/PassImpl;->getFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
