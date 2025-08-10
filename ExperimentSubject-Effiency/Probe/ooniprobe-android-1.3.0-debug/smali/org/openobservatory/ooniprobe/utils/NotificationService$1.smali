.class Lorg/openobservatory/ooniprobe/utils/NotificationService$1;
.super Ljava/lang/Object;
.source "NotificationService.java"

# interfaces
.implements Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openobservatory/ooniprobe/utils/NotificationService;->sendRegistrationToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openobservatory/ooniprobe/utils/NotificationService;

.field final synthetic val$auth_secret_file:Ljava/lang/String;

.field final synthetic val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;


# direct methods
.method constructor <init>(Lorg/openobservatory/ooniprobe/utils/NotificationService;Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/openobservatory/ooniprobe/utils/NotificationService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$client",
            "val$auth_secret_file"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->this$0:Lorg/openobservatory/ooniprobe/utils/NotificationService;

    iput-object p2, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    iput-object p3, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$auth_secret_file:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/openobservatory/measurement_kit/swig/Error;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Lorg/openobservatory/measurement_kit/swig/Error;
    .param p2, "probe_asn"    # Ljava/lang/String;
    .param p3, "probe_cc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "error",
            "probe_asn",
            "probe_cc"
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->as_bool()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/openobservatory/measurement_kit/swig/Error;->reason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 118
    return-void

    .line 120
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;

    invoke-direct {v0}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;-><init>()V

    .line 123
    .local v0, "auth":Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-virtual {v1, p2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_probe_asn(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    invoke-virtual {v1, p3}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->set_probe_cc(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/TestLists;

    sput-object p3, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_cc:Ljava/lang/String;

    .line 126
    sget-object v1, Lorg/openobservatory/ooniprobe/utils/NotificationService;->context:Landroid/content/Context;

    invoke-static {v1}, Lorg/openobservatory/ooniprobe/utils/TestLists;->getInstance(Landroid/content/Context;)Lorg/openobservatory/ooniprobe/utils/TestLists;

    sput-object p2, Lorg/openobservatory/ooniprobe/utils/TestLists;->probe_asn:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$auth_secret_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->load(Ljava/lang/String;)Lorg/openobservatory/measurement_kit/swig/Error;

    move-result-object v1

    .line 129
    .local v1, "err":Lorg/openobservatory/measurement_kit/swig/Error;
    invoke-virtual {v1}, Lorg/openobservatory/measurement_kit/swig/Error;->as_bool()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    .line 131
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->make_password()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$1;

    invoke-direct {v4, p0}, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$1;-><init>(Lorg/openobservatory/ooniprobe/utils/NotificationService$1;)V

    .line 130
    invoke-virtual {v2, v3, v4}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->register_probe(Ljava/lang/String;Lorg/openobservatory/measurement_kit/swig/OrchestrateRegisterProbeCallback;)V

    .line 146
    return-void

    .line 148
    :cond_1
    iget-object v2, p0, Lorg/openobservatory/ooniprobe/utils/NotificationService$1;->val$client:Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    new-instance v3, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$2;

    invoke-direct {v3, p0}, Lorg/openobservatory/ooniprobe/utils/NotificationService$1$2;-><init>(Lorg/openobservatory/ooniprobe/utils/NotificationService$1;)V

    invoke-virtual {v2, v0, v3}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->update(Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Lorg/openobservatory/measurement_kit/swig/OrchestrateUpdateCallback;)V

    .line 163
    return-void
.end method
