.class Lorg/openobservatory/ooniprobe/utils/NotificationService$1$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/swig/OrchestrateRegisterProbeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->callback(Lorg/openobservatory/measurement_kit/swig/Error;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openobservatory/ooniprobe/utils/NotificationService$1;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/utils/NotificationService$1;)V
    .locals 0
    .param p1, "this$1"    # Lorg/openobservatory/ooniprobe/utils/NotificationService$1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$1;->this$1:Lorg/openobservatory/ooniprobe/utils/NotificationService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/openobservatory/measurement_kit/swig/Error;Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)V
    .locals 4
    .param p1, "error"    # Lorg/openobservatory/measurement_kit/swig/Error;
    .param p2, "auth"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "error",
            "auth"
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->as_bool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$1;->this$1:Lorg/openobservatory/ooniprobe/utils/NotificationService$1;

    iget-object v0, v0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$auth_secret_file:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->dump(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;

    move-result-object v0

    .line 142
    .local v0, "err":Lorg/openobservatory/measurement_kit/swig/Error;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Lorg/openobservatory/measurement_kit/swig/Error;->reason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method
