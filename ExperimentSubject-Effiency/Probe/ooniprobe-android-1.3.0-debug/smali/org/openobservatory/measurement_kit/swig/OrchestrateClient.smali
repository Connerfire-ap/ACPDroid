.class public Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;
.super Ljava/lang/Object;
.source "OrchestrateClient.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-static {}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->new_OrchestrateClient()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .param p1, "cPtr"    # J
    .param p3, "cMemoryOwn"    # Z

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;)J
    .locals 2
    .param p0, "obj"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;

    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public available_bandwidth()Ljava/lang/String;
    .locals 2

    .line 59
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_available_bandwidth(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 29
    :try_start_0
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 30
    iget-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    .line 31
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->delete_OrchestrateClient(J)V

    .line 34
    .end local p0    # "this":Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;
    :cond_0
    iput-wide v2, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public device_token()Ljava/lang/String;
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_device_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public events_url()Ljava/lang/String;
    .locals 2

    .line 75
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_events_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    .line 25
    invoke-virtual {p0}, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->delete()V

    .line 26
    return-void
.end method

.method public find_location(Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;)V
    .locals 2
    .param p1, "cb"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateFindLocationCallback;

    .line 183
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_find_location(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public geoip_asn_path()Ljava/lang/String;
    .locals 2

    .line 107
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_geoip_asn_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public geoip_country_path()Ljava/lang/String;
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_geoip_country_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public increase_verbosity()V
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_increase_verbosity(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V

    .line 48
    return-void
.end method

.method public language()Ljava/lang/String;
    .locals 2

    .line 83
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_language(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public network_type()Ljava/lang/String;
    .locals 2

    .line 91
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_network_type(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public platform()Ljava/lang/String;
    .locals 2

    .line 115
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_platform(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public probe_asn()Ljava/lang/String;
    .locals 2

    .line 123
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_probe_asn(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public probe_cc()Ljava/lang/String;
    .locals 2

    .line 131
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_probe_cc(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public probe_family()Ljava/lang/String;
    .locals 2

    .line 139
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_probe_family(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register_probe(Ljava/lang/String;Lorg/openobservatory/measurement_kit/swig/OrchestrateRegisterProbeCallback;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "cb"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateRegisterProbeCallback;

    .line 179
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_register_probe(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public registry_url()Ljava/lang/String;
    .locals 2

    .line 147
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_registry_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set_available_bandwidth(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 63
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_available_bandwidth(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public set_device_token(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 71
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_device_token(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public set_events_url(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 79
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_events_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public set_geoip_asn_path(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 111
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_geoip_asn_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public set_geoip_country_path(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 103
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_geoip_country_path(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public set_language(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 87
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_language(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public set_logfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "logfile"    # Ljava/lang/String;

    .line 55
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_logfile(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public set_network_type(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 95
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_network_type(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public set_platform(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 119
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_platform(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public set_probe_asn(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 127
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_probe_asn(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public set_probe_cc(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 135
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_probe_cc(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public set_probe_family(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 143
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_probe_family(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public set_registry_url(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 151
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_registry_url(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public set_software_name(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 159
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_software_name(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public set_software_version(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 167
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_software_version(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public set_supported_tests(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 175
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_supported_tests(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;Ljava/util/List;)V

    .line 176
    return-void
.end method

.method public set_verbosity(J)V
    .locals 2
    .param p1, "verbosity"    # J

    .line 43
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_set_verbosity(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;J)V

    .line 44
    return-void
.end method

.method public software_name()Ljava/lang/String;
    .locals 2

    .line 155
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_software_name(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public software_version()Ljava/lang/String;
    .locals 2

    .line 163
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_software_version(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public supported_tests()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_supported_tests(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Lorg/openobservatory/measurement_kit/swig/OrchestrateUpdateCallback;)V
    .locals 7
    .param p1, "auth"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;
    .param p2, "cb"    # Lorg/openobservatory/measurement_kit/swig/OrchestrateUpdateCallback;

    .line 187
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {p1}, Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;->getCPtr(Lorg/openobservatory/measurement_kit/swig/OrchestrateAuth;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_update(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;JLorg/openobservatory/measurement_kit/swig/OrchestrateAuth;Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method public use_logcat()V
    .locals 2

    .line 51
    iget-wide v0, p0, Lorg/openobservatory/measurement_kit/swig/OrchestrateClient;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lorg/openobservatory/measurement_kit/swig/mk_swig_ooniJNI;->OrchestrateClient_use_logcat(JLorg/openobservatory/measurement_kit/swig/OrchestrateClient;)V

    .line 52
    return-void
.end method
