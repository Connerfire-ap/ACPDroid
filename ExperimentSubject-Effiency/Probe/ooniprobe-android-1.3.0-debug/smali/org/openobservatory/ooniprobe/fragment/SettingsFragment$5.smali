.class Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "actionId",
            "event"
        }
    .end annotation

    .line 148
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "new_max_runtime":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 151
    const-string v0, "10"

    .line 152
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v1}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    # getter for: Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->mActivity:Lorg/openobservatory/ooniprobe/activity/MainActivity;
    invoke-static {v2}, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->access$000(Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;)Lorg/openobservatory/ooniprobe/activity/MainActivity;

    move-result-object v2

    const v3, 0x7f0e0061

    invoke-virtual {v2, v3}, Lorg/openobservatory/ooniprobe/activity/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 153
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 155
    .local v3, "text":Landroid/widget/TextView;
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    .end local v1    # "toast":Landroid/widget/Toast;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment$5;->this$0:Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;

    iget-object v1, v1, Lorg/openobservatory/ooniprobe/fragment/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 159
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "max_runtime"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    .end local v0    # "new_max_runtime":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
